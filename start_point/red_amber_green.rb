
lambda { |stdout,stderr,status|
  output = stdout + stderr

  return :amber if /SyntaxError/.match(output)
  return :amber if /NameError/.match(output)
  return :amber if /Parser errors:/.match(output)
  return :amber if /^undefined method/.match(output)
  return :amber if /^[.\-UAPF]*U[.\-UAPF]*$/.match(output)
  return :amber if /^[.\-UAPF]*A[.\-UAPF]*$/.match(output)
  return :red   if /^[.\-UAPF]*P[.\-UAPF]*$/.match(output)
  return :red   if /^[.\-UAPF]*F[.\-UAPF]*$/.match(output)
  return :red   if /^\(\:\:\) failed steps \(\:\:\)$/.match(output)
  return :red   if /^\(\:\:\) pending steps \(\:\:\)$/.match(output)

  # Green rests on cucumber's own summary saying every scenario it ran passed,
  # and on there having been one to run. Anything else reaching here is output
  # this cannot read: a run whose summary never arrived because the learner
  # printed past what the runner keeps, or one that found no scenario at all.
  # Neither proves anything, so neither is green.
  return :green if /^[1-9]\d* scenarios? \(\d+ passed\)$/.match(output)
  return :amber
}
