# Changelog

All notable changes to this project will be documented in this file. See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## [1.0.0](https://github.com/tnc1997/dart-tfl-api-client/compare/v1.0.0-nullsafety.1...v1.0.0) (2025-01-01)

### ⚠ BREAKING CHANGES

* Rename the get meta modes method in the `JourneyService` from `meta` to `metaModes` to align with other services.
* Rename the get predictions method in the `VehicleService` from `get` to `arrivals` to align with other services.
* Rename air quality model fields to camel case.
* Add namespace prefix to model names as per TfL API where applicable.
* Remove all the web cat models that are unused from the package.
* Remove all the stop point models that are unused from the package.
* Remove all the road models that are unused from the package.
* Remove all the place models that are unused from the package.
* Remove all the line models that are unused from the package.
* Remove all the journey models that are unused from the package.
* Remove all the fare models that are unused from the package.
* Remove all the etl models that are unused from the package.
* Remove all the common models that are unused from the package.
* Remove all the api health models that are unused from the package.
* Remove all the accident stats models that are unused from the package.
* Shorten method names in services to improve readability e.g. from `journeyResultsByPathFromPathToQueryViaQueryNationalSearchQueryDateQu` to `journeyResults`.
* Convert positional parameters to named parameters to improve readability.
* Rename `ClientException` to `TflApiClientException` to avoid naming conflicts and update the fields in `TflApiClientException`.
* Remove unnecessary numerical suffixes from model class names.
* Remove `listFromJson` and `mapFromJson` methods from common models.
* Remove `listFromJson` and `mapFromJson` methods from vehicle models.
* Remove `listFromJson` and `mapFromJson` methods from stop point models.
* Remove `listFromJson` and `mapFromJson` methods from road models.
* Remove `listFromJson` and `mapFromJson` methods from place models.
* Remove `listFromJson` and `mapFromJson` methods from occupancy models.
* Remove `listFromJson` and `mapFromJson` methods from mode models.
* Remove `listFromJson` and `mapFromJson` methods from line models.
* Remove `listFromJson` and `mapFromJson` methods from journey models.
* Remove `listFromJson` and `mapFromJson` methods from air quality models.
* Remove `listFromJson` and `mapFromJson` methods from accident stats models.
* Remove all the models that are unused from the package.
* Rename getters and services to align with TfL API documentation.
* Remove `TflApiClientContext` and use `Client` directly in services.

### Features

* add cabwise feature ([b49ba81](https://github.com/tnc1997/dart-tfl-api-client/commit/b49ba817af3e69c89c4f9fc9197fa1f0b8237e16))
* add cycle superhighway feature ([52782ab](https://github.com/tnc1997/dart-tfl-api-client/commit/52782ab98c0c386da49879f7c9c738c1663d522d))
* add network status feature ([649099c](https://github.com/tnc1997/dart-tfl-api-client/commit/649099ca47971b0af659746dd9b2641d1180551b))

### Bug Fixes

* cabwise service uri query parameters ([3a355f8](https://github.com/tnc1997/dart-tfl-api-client/commit/3a355f85a4b55c335e18f082f1640b309eb39447))
* cycle superhighway entity not found exception ([4a2e1be](https://github.com/tnc1997/dart-tfl-api-client/commit/4a2e1beeb28feebdb577a181f08276c8c7b8293c))

### Builds

* remove json serializable ([44747b4](https://github.com/tnc1997/dart-tfl-api-client/commit/44747b4696d0bab216389f302b409e2641f2849d))
* remove standard version ([a6a513b](https://github.com/tnc1997/dart-tfl-api-client/commit/a6a513b351bf388e204e78e14636fee44a1e4d94))
* upgrade dependencies ([7128941](https://github.com/tnc1997/dart-tfl-api-client/commit/7128941b9e555ec173a5194af909907ef1bd8645))

### Chores

* update .gitignore ([cf280e8](https://github.com/tnc1997/dart-tfl-api-client/commit/cf280e8ba0e5791ad09ca3a165dffcc57cb60366))
* update license ([390a494](https://github.com/tnc1997/dart-tfl-api-client/commit/390a494af9db5a2082b875b618f4c844cf9055c6))
* update license ([0f664f4](https://github.com/tnc1997/dart-tfl-api-client/commit/0f664f40b3027dcdfca775277c91b078db6f37a7))

### Documentation

* update app key client ([d164b73](https://github.com/tnc1997/dart-tfl-api-client/commit/d164b73d9e43f736075d7ebfab81a73052195db1))
* update package description ([076d620](https://github.com/tnc1997/dart-tfl-api-client/commit/076d62016aadfd30bb9257ae849d13ea84388309))
* update readme ([d09c597](https://github.com/tnc1997/dart-tfl-api-client/commit/d09c597fe19bf25e473f847596bbe348956eddfa))

### Code Refactoring

* add comparable implementations ([3dd731b](https://github.com/tnc1997/dart-tfl-api-client/commit/3dd731b74a4dca99b1f152213df42d1dc66d6e40))
* add identifiable interface ([ccf5d10](https://github.com/tnc1997/dart-tfl-api-client/commit/ccf5d10e2c8eeb505cd1dd572c8ccf5fd47f9230))
* add journey elevation model ([179fab3](https://github.com/tnc1997/dart-tfl-api-client/commit/179fab3f94e064bfc7a62aeb15b3041f414fed71))
* add namespace prefix to model names ([a1be005](https://github.com/tnc1997/dart-tfl-api-client/commit/a1be005cea534cd36d41c7bdd3b978abebf0fc48))
* add place geo point model ([55b574a](https://github.com/tnc1997/dart-tfl-api-client/commit/55b574a925e2cf7e7971f2ba72484ce2145aeb74))
* align getters and services with tfl api ([cecae41](https://github.com/tnc1997/dart-tfl-api-client/commit/cecae4128efe3f7a7870f0202f9be6096869c6ec))
* folder by feature accident stats ([0e5a5ca](https://github.com/tnc1997/dart-tfl-api-client/commit/0e5a5caf9f4c8d2b071692b328ea71426c57f493))
* folder by feature air quality ([d6c7f73](https://github.com/tnc1997/dart-tfl-api-client/commit/d6c7f73e2771f1e6dff71c7d6820c17216b7ca7d))
* folder by feature bike point ([a8d0809](https://github.com/tnc1997/dart-tfl-api-client/commit/a8d08099fc75b1fc7aecb1604d238d79e0ab9715))
* folder by feature common ([5d12889](https://github.com/tnc1997/dart-tfl-api-client/commit/5d1288966bb3f8c1ebe8271760c694936d7043bf))
* folder by feature journey ([182c2b4](https://github.com/tnc1997/dart-tfl-api-client/commit/182c2b4bbe043ef835ea15aecd30fe387b3e4c4c))
* folder by feature line ([af0fd03](https://github.com/tnc1997/dart-tfl-api-client/commit/af0fd03eca407699aa19b2c9b1a3a80bef339422))
* folder by feature mode ([656f396](https://github.com/tnc1997/dart-tfl-api-client/commit/656f39613dfca06a6c524c0703fda7f2c88bb8ea))
* folder by feature occupancy ([57f8e1a](https://github.com/tnc1997/dart-tfl-api-client/commit/57f8e1a74372fe9a8409e5f512da5dc94979339a))
* folder by feature place ([8f0016e](https://github.com/tnc1997/dart-tfl-api-client/commit/8f0016e36043ae53f499e3c949621b333a878fd4))
* folder by feature road ([696597c](https://github.com/tnc1997/dart-tfl-api-client/commit/696597ce736f07565b4a6051b15468b406616bd2))
* folder by feature search ([c2047d1](https://github.com/tnc1997/dart-tfl-api-client/commit/c2047d1c240e4ee4c2c508a1306c6dc31141b3ef))
* folder by feature stop point ([f642198](https://github.com/tnc1997/dart-tfl-api-client/commit/f64219816a06e53b238d77b766b5b1d330c79967))
* folder by feature vehicle ([87ec13d](https://github.com/tnc1997/dart-tfl-api-client/commit/87ec13d053e73e0305bedfedc770ff5b3d311605))
* package exports to relative exports ([837c110](https://github.com/tnc1997/dart-tfl-api-client/commit/837c110834c1f854dffe6bb92959a96c792e57fe))
* package imports to relative imports ([d7cba2a](https://github.com/tnc1997/dart-tfl-api-client/commit/d7cba2aaf90bce01639038af93ad9a07c7af97e4))
* positional parameters to named parameters ([79d3c91](https://github.com/tnc1997/dart-tfl-api-client/commit/79d3c913c690b016cf10b5d61316725c56642610))
* remove json serializable from accident stats ([6bc04d9](https://github.com/tnc1997/dart-tfl-api-client/commit/6bc04d956f8f09d6c18a6a478143d39fe62f3e74))
* remove json serializable from air quality ([c83d7e0](https://github.com/tnc1997/dart-tfl-api-client/commit/c83d7e0aaa0535bbdf98d79655005d1037dbc796))
* remove json serializable from common ([0efce2d](https://github.com/tnc1997/dart-tfl-api-client/commit/0efce2dc869a34497a10a57d8707545dc2d64e53))
* remove json serializable from journey ([5d00ad9](https://github.com/tnc1997/dart-tfl-api-client/commit/5d00ad9d8d2c6718f87be712b000626aa9220360))
* remove json serializable from line ([0455d9c](https://github.com/tnc1997/dart-tfl-api-client/commit/0455d9c3738a326acd5b92fce8c93da0c0b9d6eb))
* remove json serializable from mode ([bfd5a50](https://github.com/tnc1997/dart-tfl-api-client/commit/bfd5a50386ef8ca7a682ac4d9aa60c836719f517))
* remove json serializable from occupancy ([4b55f2c](https://github.com/tnc1997/dart-tfl-api-client/commit/4b55f2c47af42ebd4fc95629dc34dc7a115763c4))
* remove json serializable from place ([0ef0982](https://github.com/tnc1997/dart-tfl-api-client/commit/0ef0982786256a58fd086c89487dbaa614bee054))
* remove json serializable from road ([4e8ef08](https://github.com/tnc1997/dart-tfl-api-client/commit/4e8ef08efe1b0b7a14aac98dada2c7cdd37ee6db))
* remove json serializable from stop point ([9c395df](https://github.com/tnc1997/dart-tfl-api-client/commit/9c395df685514e2e5b22a50c1840cd2c0bb110e1))
* remove json serializable from vehicle ([832cc64](https://github.com/tnc1997/dart-tfl-api-client/commit/832cc6497170e84a654612920a8ace28591464dc))
* remove list from json from accident stats ([41041e4](https://github.com/tnc1997/dart-tfl-api-client/commit/41041e485d24bc0b98adb8ee831a5396d2c23d83))
* remove list from json from air quality ([4b7a1c2](https://github.com/tnc1997/dart-tfl-api-client/commit/4b7a1c2b7e6f01a8e3fa8c80798dc952ecfb9502))
* remove list from json from common ([47d7436](https://github.com/tnc1997/dart-tfl-api-client/commit/47d74363000480524672aa2199fa8f052f2fa592))
* remove list from json from journey ([a51368a](https://github.com/tnc1997/dart-tfl-api-client/commit/a51368aec044e1363afb4149aa93a5ba99003486))
* remove list from json from line ([850cf6e](https://github.com/tnc1997/dart-tfl-api-client/commit/850cf6e56341b0e788491692dd93c913de4a79a3))
* remove list from json from mode ([79533c0](https://github.com/tnc1997/dart-tfl-api-client/commit/79533c01f6b61f446d8cc1051353a0089eff3da1))
* remove list from json from occupancy ([464062b](https://github.com/tnc1997/dart-tfl-api-client/commit/464062b97f69e9337be47bb6803d3c7140552489))
* remove list from json from place ([64e2d0f](https://github.com/tnc1997/dart-tfl-api-client/commit/64e2d0fef4671765221c157d5602cd524a348752))
* remove list from json from road ([ef5f628](https://github.com/tnc1997/dart-tfl-api-client/commit/ef5f628e1f29c526f5c39cdb2b727345d0c9c73d))
* remove list from json from stop point ([f1d1302](https://github.com/tnc1997/dart-tfl-api-client/commit/f1d1302cbd48f964364c0fd510a602c0a59602aa))
* remove list from json from vehicle ([8f5249f](https://github.com/tnc1997/dart-tfl-api-client/commit/8f5249ff90af578c5b9fd9f71f3e2d41d875b316))
* remove numerical suffixes from classes ([ceb70ba](https://github.com/tnc1997/dart-tfl-api-client/commit/ceb70ba98479b68dd541ea2be0490ddd3136e947))
* remove tfl api client context ([22b145f](https://github.com/tnc1997/dart-tfl-api-client/commit/22b145f3746e3713e8747dad3d2cb5251f1364a9))
* remove unnecessary export ([d8b84eb](https://github.com/tnc1997/dart-tfl-api-client/commit/d8b84ebb3de4e6676f5c2cdc62faf6f6f017eae1))
* remove unused accident stats models ([5c857d2](https://github.com/tnc1997/dart-tfl-api-client/commit/5c857d2c30929a3f31a571fcfdc6b7583a0233ce))
* remove unused api health models ([b927414](https://github.com/tnc1997/dart-tfl-api-client/commit/b9274143e99235945add8bbc6050caad782de051))
* remove unused common models ([167c811](https://github.com/tnc1997/dart-tfl-api-client/commit/167c811b4be9b328c070a703f6e6371bdaba44b9))
* remove unused etl models ([d0d1623](https://github.com/tnc1997/dart-tfl-api-client/commit/d0d16236fe4deb2aaed686cb3f78c1419a313915))
* remove unused fare models ([aab9fc7](https://github.com/tnc1997/dart-tfl-api-client/commit/aab9fc7793600c0e6fc9dc5356f1d6fa98d1f0e8))
* remove unused journey models ([f3091e2](https://github.com/tnc1997/dart-tfl-api-client/commit/f3091e20c3d43cde45e248046bc1cba150c985cd))
* remove unused line models ([31e2310](https://github.com/tnc1997/dart-tfl-api-client/commit/31e23109ba00ef7e8cd7d46a14aae5120843f852))
* remove unused models ([3323964](https://github.com/tnc1997/dart-tfl-api-client/commit/3323964cc7809c885cc5b6d9146e98dc248cedcf))
* remove unused place models ([c05b33b](https://github.com/tnc1997/dart-tfl-api-client/commit/c05b33b964014dac42d7648addb38a472896c5fb))
* remove unused road models ([a279140](https://github.com/tnc1997/dart-tfl-api-client/commit/a279140f6d0ff0fa9856841cd66b6ac7118679a7))
* remove unused stop point models ([894fcac](https://github.com/tnc1997/dart-tfl-api-client/commit/894fcac68b9de3b50cc59e86f15bf8bc1df2e924))
* remove unused web cat models ([53f724d](https://github.com/tnc1997/dart-tfl-api-client/commit/53f724d06c89c5e1fc7ffee6f4146bad108f87a1))
* rename air quality model fields ([e15fe3c](https://github.com/tnc1997/dart-tfl-api-client/commit/e15fe3c874d8b21d5fda7c6e8223b407954c5239))
* rename cycle superhighway field ([bca9e8c](https://github.com/tnc1997/dart-tfl-api-client/commit/bca9e8cc2c7be91df7f41c11463ac567debc6ad0))
* rename journey service get meta modes method ([ad92424](https://github.com/tnc1997/dart-tfl-api-client/commit/ad924246d1e71961e43b016efd82f7c5a90f1e79))
* rename vehicle service get predictions method ([0bf9b07](https://github.com/tnc1997/dart-tfl-api-client/commit/0bf9b079834293ec59b7116b8ff65732f37ba36d))
* shorten method names in services ([dbedb54](https://github.com/tnc1997/dart-tfl-api-client/commit/dbedb5476920f655079f02434a31328565ca8420))
* update app key client ([0f95955](https://github.com/tnc1997/dart-tfl-api-client/commit/0f9595527dad36775b65202b7842556903d82733))
* update package example ([fe796d3](https://github.com/tnc1997/dart-tfl-api-client/commit/fe796d36f3f671f6a1b08060063d7976292cbcbf))
* update tfl api client exception ([a50f099](https://github.com/tnc1997/dart-tfl-api-client/commit/a50f0993701cff3c09e8828ed5ef5e027f149423))

### Tests

* add accident stats service ([504f6f5](https://github.com/tnc1997/dart-tfl-api-client/commit/504f6f5227ee17cfaec8d919f4102d84d4c8cd04))
* add air quality service ([7ed2902](https://github.com/tnc1997/dart-tfl-api-client/commit/7ed29026b37854f29f2af6acf0c00bc53fe2f7af))
* add bike point service ([74e9db3](https://github.com/tnc1997/dart-tfl-api-client/commit/74e9db37646737e4f5f6fbae50a980d69095b87e))
* add cabwise service ([ab85e98](https://github.com/tnc1997/dart-tfl-api-client/commit/ab85e98a397334592df7cf6674d497c70935c834))
* add cycle superhighway service ([a306664](https://github.com/tnc1997/dart-tfl-api-client/commit/a30666491ff289c9839ab73c346116974d5ff734))
* add journey service ([8e11fcc](https://github.com/tnc1997/dart-tfl-api-client/commit/8e11fcce897409a2c499e6459f5d18b032bb5827))
* add line service ([fca1c09](https://github.com/tnc1997/dart-tfl-api-client/commit/fca1c093c380ecd62adb967e3f1fcf9d6d4827f3))
* add mode service ([4c89715](https://github.com/tnc1997/dart-tfl-api-client/commit/4c89715baf7e950805081f9fa171240ac301c868))
* add network status service ([ec99195](https://github.com/tnc1997/dart-tfl-api-client/commit/ec991958b2fd6a23c9c3a3124374673e819eab65))
* add occupancy service ([22b223a](https://github.com/tnc1997/dart-tfl-api-client/commit/22b223a8006e0f5cead696fbb3c78b849d34f833))
* add place service ([b4c44f3](https://github.com/tnc1997/dart-tfl-api-client/commit/b4c44f38d770f4732dbf54db45bda6506f6bed53))
* add road service ([3e7fde4](https://github.com/tnc1997/dart-tfl-api-client/commit/3e7fde4527cc5710621c2218fef1e715d55e00c2))
* add search service ([a046c96](https://github.com/tnc1997/dart-tfl-api-client/commit/a046c967924fa036faf51c756417ed5a12132450))
* add stop point service ([8c697d5](https://github.com/tnc1997/dart-tfl-api-client/commit/8c697d55b02353d88b993a6df20dd56b9d60895b))
* add vehicle service ([16cf0bf](https://github.com/tnc1997/dart-tfl-api-client/commit/16cf0bf6b5d609a216997a64d0f98abfaa26d980))
* remove tfl api client ([03a3977](https://github.com/tnc1997/dart-tfl-api-client/commit/03a39779fdc114ae19b9a565e7dc20a7433f4fbe))
* update accident stats service ([117a2c9](https://github.com/tnc1997/dart-tfl-api-client/commit/117a2c90d7743bc95385132f26f58d6d312006d3))
* update air quality service ([425f560](https://github.com/tnc1997/dart-tfl-api-client/commit/425f5601020794ba13f83d8ebdfc6b96cbb2cc2a))
* update bike point service ([7e29a91](https://github.com/tnc1997/dart-tfl-api-client/commit/7e29a918fdc2ba17dae6034d582bc75fb08e2ee9))
* update cabwise service ([6b42551](https://github.com/tnc1997/dart-tfl-api-client/commit/6b4255148f0e4868ee4e78d3f61036803f00ebec))
* update journey service ([c48ced5](https://github.com/tnc1997/dart-tfl-api-client/commit/c48ced538b711bbb406f86a60325a40ee2a9cf21))
* update line service ([886a245](https://github.com/tnc1997/dart-tfl-api-client/commit/886a245ac0547888f4da775dce5fb34f2ded5983))
* update place service ([acdf2e6](https://github.com/tnc1997/dart-tfl-api-client/commit/acdf2e6a44b0b499a33c67c450e0c0954092c3ad))

## [1.0.0-nullsafety.1](https://github.com/tnc1997/dart-tfl-api-client/compare/v1.0.0-nullsafety.0...v1.0.0-nullsafety.1) (2021-02-07)

### ⚠ BREAKING CHANGES

* fare details contactless payg only fare
* prediction vehicle cd id
* stop point sms code

### Builds

* upgrade dependencies ([a33e1e6](https://github.com/tnc1997/dart-tfl-api-client/commit/a33e1e62b60956486ab8b226cdf2359b31d627e8))

### Documentation

* update constants ([e0eb18e](https://github.com/tnc1997/dart-tfl-api-client/commit/e0eb18e4eb5302fd94de2805c74cc8fbccd1f141))
* update description ([683ad9a](https://github.com/tnc1997/dart-tfl-api-client/commit/683ad9a842da10a49b3148e9411a21014225716e))
* update exceptions ([55b5962](https://github.com/tnc1997/dart-tfl-api-client/commit/55b5962217e2ae7835049c0ce2c0ecfacb092283))
* update extensions ([0516662](https://github.com/tnc1997/dart-tfl-api-client/commit/05166622185de9ec6074e59cf2653e8e5df070bb))

### Chores

* update license ([f6a4e63](https://github.com/tnc1997/dart-tfl-api-client/commit/f6a4e639ba38efdd2aa51f9a3a2b8ec29af537c8))

### Code Refactoring

* fare details contactless payg only fare ([cfe2a5c](https://github.com/tnc1997/dart-tfl-api-client/commit/cfe2a5cdc94c8b928615a6094cc549d723aee1e9))
* prediction vehicle cd id ([eab0c0f](https://github.com/tnc1997/dart-tfl-api-client/commit/eab0c0f90ae9d702af53f08ef95075cb6f519e9f))
* stop point sms code ([c64f218](https://github.com/tnc1997/dart-tfl-api-client/commit/c64f2189dcb78b293627b37010dfa805a5afa175))

## [1.0.0-nullsafety.0](https://github.com/tnc1997/dart-tfl-api-client/compare/v0.4.0...v1.0.0-nullsafety.0) (2020-12-20)

### Continuous Integrations

* remove github actions [skip ci] ([8f451ad](https://github.com/tnc1997/dart-tfl-api-client/commit/8f451adf2af59be50a5a2fe5696db2c3d7cde085))

### Chores

* move tfl_api_client.iml ([0bb2c14](https://github.com/tnc1997/dart-tfl-api-client/commit/0bb2c14098ceedde7d2eeed34f8dce483431dba0))
* update .gitignore ([f00b393](https://github.com/tnc1997/dart-tfl-api-client/commit/f00b393094b2690571383b754195cb8bef984038))

### Code Refactoring

* add null safety ([#15](https://github.com/tnc1997/dart-tfl-api-client/issues/15)) ([5bf2816](https://github.com/tnc1997/dart-tfl-api-client/commit/5bf28160902430f50411569a6a98f8d2aef0db6e))
* add override annotations ([#16](https://github.com/tnc1997/dart-tfl-api-client/issues/16)) ([e593778](https://github.com/tnc1997/dart-tfl-api-client/commit/e5937789b28806a5eecebde2b34f66f0376dc63d))
