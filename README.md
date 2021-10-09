[![MATLAB Tests on Github Host](https://github.com/lsawade/matlabghactions_example/actions/workflows/unittesting.yml/badge.svg)](https://github.com/lsawade/matlabghactions_example/actions/workflows/unittesting.yml)

---

# Matlab and Github Actions for Unit Testing

This is a minimal example that shows you how you can automate unit testing using
Github Actions. Unit testing is extremely good coding practice. 

Matlab has vast documentation for this located here: [Matlab Unit Test
Framework](https://www.mathworks.com/help/matlab/matlab-unit-test-framework.html).

In this repo, we show a single way of setting up your unit testing workflow
using Function-based unit testing. There are also Script- and Class-based unit
testing frameworks, but those are beyond the scope of this sample repo.

## Important things.

### Running the tests by "hand"

The unit test to be used as an example is placed in `tests/`[`test_func.m`] and
is testing an implementation of `func -> f(x,y) = 1-(sin(x).^2 + cos(y).^2)`,
which is located at `functions/`[`func.m`].

The main driver of the tests is [`runtests.m`] and if called using 

```bash
matlab -nosplash -nodesktop -nodisplay -r "run runtests.m; exit" | tail +10
```

Only the results of the tests are printed.

### Github Actions

The Github Actions Worklow ot run your unit tests is located at
`.github/workflows/`[`unittesting.yml`]. The [`unittesting.yml`] runs the tests
in just a few steps.

1. Checks out the repo
2. Installs Matlab (essentially copying)
3. Runs tests (initialization here takes a bit sometimes)

If your tests pass you get this cute badge linked to your `workflow`:

[![MATLAB Tests on Github Host](https://github.com/lsawade/matlabghactions_example/actions/workflows/unittesting.yml/badge.svg)](https://github.com/lsawade/matlabghactions_example/actions/workflows/unittesting.yml)

You can reach the badge creator by clicking on the three dots in the top-right
of the Github Action Page of you your workflow. Then, add the badge to your
docs. The badge will be automatically updated if your newly pushed tests
pass/fail. 

## Not important things

[`pathsetup.m`] is simply a way of organizing the paths. Just to see the
function there is an example script as well located in
`examples/`[`myscript.m`].






[`myscript.m`]: examples/myscript.m
[`func.m`]: functions/func.m
[`test_func.m`]: tests/test_func.m
[`runtests.m`]: runtests.m
[`pathsetup.m`]: pathsetup.m
[`unittesting.yml`]: .github/workflows/unittesting.yml
