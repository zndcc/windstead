@echo off

if ["%~1"]==["json"] (
    copy /-y resources\Windstead.json Windstead.json
)
if ["%~1"]==[""] (
    copy /-y resources\Windstead.yaml Windstead.yaml
)

echo Windstead initialized!
