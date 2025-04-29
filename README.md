# terraform-h2-beta-feature

## Module version creation

This repository host a module which it's releases are handled automatically by GitHub Actions workflows, following the below process:

1. Module is modified according the request/requeriment. This should be done using a code editor (eg. Visual Studio Code) locally on a bran different that `main`.
2. Once the modified code has been commited into this repository, user needs to create a Pull Request targeting to `main` repository. Pull Request creation MUST follow [Convetional Commits](https://www.conventionalcommits.org/en/v1.0.0/#summary) syntax. 
3. The Pull Request created on the step above, will trigger a Terraform Cloud test available at `refer_test_landpage_here`.
4. If the check pass, and once the PR has been reviewed, you can merge the PR into `main` branch.
5. Once merged into `main`, this process will trigger automatically *Release Please* action, which will create a new pull request and a new release version and update `CHANGELOG.MD` file
6. Review the pull request and merge, if everything looks good.
7. Once merged and the new release has been created, this is going to trigger another GitHub action called *Create TFC Tag* to create a new tag on Terraform Cloud private registry associated to this repository so that both GitHub release versions and Terraform Cloud registry versions will be synced. 

### Workflow diagram

Ayeee

```mermaid
graph TD;
    Dependabot-->Release Please;
    A-->C;
    Release-Please-->TFC-Tag;
    C-->D;
```
