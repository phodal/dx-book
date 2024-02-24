cat docs/define-dx.md \
  docs/maturity-model.md \
  docs/factor/documentations.md docs/factor/error-handling.md docs/factor/usability.md docs/factor/interactive-design.md docs/factor/touch-point.md \
  docs/patterns/auto-install-script.md \
  docs/patterns/dev-exp-team.md \
  docs/patterns/developer-experience-center.md \
  docs/patterns/developer-portal.md \
  docs/patterns/document-engineering.md \
  docs/patterns/document-for-learn.md \
  docs/patterns/interactive-script.md \
  docs/patterns/issue-bot.md \
  docs/patterns/living-document-code.md \
  docs/patterns/onboarding-journey.md \
  docs/patterns/patterns.md \
  docs/patterns/starter-generator.md \
  docs/patterns/template-by-ci.md \
  docs/anti-patterns/developer-as-service.md \
  docs/anti-patterns/fake-opensource.md \
  docs/anti-patterns/kpi-base-model-design.md \
  docs/anti-patterns/marketing-drive-developement.md \
  docs/anti-patterns/metric-to-contributor.md \
  docs/anti-patterns/ui-replace-cmd.md \
  docs/engineering/document-engineering.md \
  docs/domain/api-design.md \
  docs/domain/cloud-native.md \
  docs/domain/devops.md \
  docs/domain/openbank.md \
  docs/operation-model.md \
  docs/maturity-model.md \
  docs/dev-ex-framework.md \
  docs/refs.md > output.md

sed '/^---$/,/^---$/d' output.md > temp.md && mv temp.md output.md
pandoc -s output.md -o output.docx
