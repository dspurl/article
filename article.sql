INSERT INTO `auth_rules` (`id`, `api`, `url`, `icon`, `title`, `pid`, `state`, `sort`) VALUES
(175, 'ArticleManage', '', 'article', '文章管理', 0, 1, 0),
(176, 'Column', '', '', '栏目', 175, 1, 0),
(177, 'ColumnList', '', '', '栏目列表', 176, 1, 0),
(178, 'CreateColumn', '', '', '添加栏目', 176, 0, 0),
(179, 'EditColumn', '', '', '编辑栏目', 176, 0, 0),
(180, 'DeleteColumn', '', '', '删除栏目', 176, 0, 0),
(181, 'Article', '', '', '文章', 175, 1, 0),
(182, 'ArticleList', '', '', '文章列表', 181, 1, 0),
(183, 'CreateArticle', '', '', '添加文章', 181, 0, 0),
(184, 'EditArticle', '', '', '编辑文章', 181, 0, 0),
(185, 'DeleteArticle', '', '', '删除文章', 181, 0, 0);
INSERT INTO `articles` (`id`, `column_id`, `name`, `keyword`, `describes`, `show`, `sort`, `pv`, `created_at`, `updated_at`) VALUES
(1, 1, '隐私权政策', '隐私权政策', '隐私权政策', 1, 5, 27, '2020-10-30 12:17:04', '2020-12-14 16:03:50'),
(2, 1, '用户注册协议', '用户注册协议', '用户注册协议', 1, 5, 10, '2020-10-30 12:35:04', '2020-12-14 16:03:48'),
(3, 1, '账户注销须知', '账户注销须知', '账户注销须知', 1, 5, 5, '2020-12-07 16:46:31', '2020-12-13 18:54:00');
INSERT INTO `article_propertys` (`id`, `article_id`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '<p align=\"left\">版本生效日期：2020年12月07日</p>\n<p align=\"center\">引言</p>\n<p align=\"left\">XX有限公司（以下简称我们）非常重视用户的隐私和个人信息保护。您在使用我们的产品与/或服务时，我们可能会收集和使用您的相关信息。我们希望通过《dsshop隐私政策》（以下简称&ldquo;本隐私政策&rdquo;）向您说明在您使用我们的产品与/或服务时，我们如何收集、使用、保存、共享和转让这些信息，以及我们为您提供的访问、更新、删除和保护这些信息的方式。</p>\n<p align=\"left\">本隐私政策将帮助您了解以下内容：<br />一、我们如何收集和使用您的个人信息<br />二、我们如何使用&nbsp;Cookies&nbsp;和同类技术<br />三、我们如何共享、转让、公开披露您的个人信息<br />四、我们如何保护和保存您的个人信息<br />五、您如何管理个人信息<br />六、未成年人的个人信息保护<br />七、通知和修订<br />八、如何联系我们</p>\n<p align=\"left\">本隐私政策与您所使用的dsshop商城服务以及该服务所包括的各种业务功能（以下统称&ldquo;我们的产品与/或服务&rdquo;）息息相关，希望您在使用我们的产品与/或服务前仔细阅读并确认您已经充分理解本隐私政策所写明的内容，并让您可以按照本隐私政策的指引做出您认为适当的选择。本隐私政策中涉及的相关术语，我们尽量简明扼要的表述，并提供进一步说明的链接，以便您更好地理解。您开始使用或在我们更新本隐私政策后（我们会及时提示您更新的情况）继续使用我们的产品与/或服务，即意味着您同意本隐私政策（含更新版本）内容，并且同意我们按照本隐私政策收集、使用、保存和共享您的相关信息。</p>\n<p align=\"left\">请您特别注意：本隐私政策适用于我们以网站、客户端、小程序以及随技术发展出现的新形态向您提供的各项产品和服务。如我们及关联公司的产品或服务中使用了dsshop商城的产品或服务（如使用dsshop商城账户登录）但未设独立隐私权政策的，则本隐私政策同样适用于该部分产品或服务。我们就其向您提供的产品或服务单独设有隐私权政策的，则相应产品或服务适用相应隐私权政策。</p>\n<p align=\"left\">如对本隐私政策或相关事宜有任何问题，您可随时通过在线客服、发送邮件至privacy@dsshop.test或拨打我们的任何一部客服电话等多种方式与我们联系。</p>\n<p align=\"left\">一、我们如何收集和使用您的个人信息</p>\n<p align=\"left\">个人信息是指以电子或者其他方式记录的能够单独或者与其他信息结合识别特定自然人身份或者反映特定自然人活动情况的各种信息。个人敏感信息是指一旦泄露、非法提供或滥用可能危害人身和财产安全，极易导致个人名誉、身心健康受到损害或歧视性待遇的个人信息。本隐私政策中涉及的个人信息包括：基本信息（包括个人姓名、生日、性别、住址、个人电话号码、电子邮箱）；个人身份信息（包括身份证、军官证、护照、驾驶证等）；个人生物识别信息（包括声纹、面部识别特征等）；网络身份标识信息（包括个人信息主体账号、IP地址、个人数字证书等）；个人财产信息（包括交易和消费记录、余额、优惠券、游戏类兑换码等虚拟财产信息）；通讯录；个人上网记录（包括网页浏览记录、软件使用记录、点击记录）；个人常用设备信息（包括硬件型号、设备MAC地址、操作系统类型、软件列表唯一设备识别码（如IMEI/androidID/IDFA/OPENUDID/GUID、SIM卡IMSI信息等在内的描述个人常用设备基本情况的信息））；个人位置信息（包括行程信息、精准定位信息、住宿信息、经纬度等）；其中，字体加粗部分为涉及的个人敏感信息。</p>\n<p align=\"left\">我们仅会出于以下目的，收集和使用您的个人信息：</p>\n<p align=\"left\">（一）您须授权我们收集和使用您个人信息的情形</p>\n<p align=\"left\">我们的产品与/或服务包括一些核心功能，这些功能包含了实现网上购物所必须的功能及保障交易安全所必须的功能。我们可能会收集和使用下列与您有关的信息才能实现上述这些功能。如果您不提供相关信息，您将无法享受我们提供的产品与/或服务。这些功能包括：</p>\n<p align=\"left\">1、实现网上购物所必须的功能</p>\n<p align=\"left\">（1）用户注册</p>\n<p align=\"left\">您首先需要注册一个dsshop账户以成为dsshop用户。当您注册时，您至少需要向我们提供您准备使用的dsshop账户名、密码、您本人的手机号码、电子邮箱地址（用于验证邮箱），我们将通过发送短信验证码或邮件的方式来验证您的身份是否有效。您的账户名为您的默认昵称，您可以修改和补充您的昵称、性别、生日、兴趣爱好以及您的实名认证相关信息，这些信息均属于您的&ldquo;账户信息&rdquo;。您补充的账户信息将有助于我们为您提供个性化的商品推荐和更优的购物体验，但如果您不提供这些补充信息，不会影响您使用网上购物的基本功能。</p>\n<p align=\"left\">（2）商品信息展示和搜索</p>\n<p align=\"left\">为了让您快速地找到您所需要的商品，我们可能会收集您使用我们的产品与/或服务的设备信息（包括设备名称、设备型号、设备识别码、操作系统和应用程序版本、语言设置、分辨率、服务提供商网络ID（PLMN））、浏览器类型来为您提供商品信息展示的最优方式。我们也会为了不断改进和优化上述的功能来使用您的上述信息。</p>\n<p align=\"left\">您也可以通过搜索来精准地找到您所需要的商品或服务。我们会保留您的搜索内容以方便您重复输入或为您展示与您搜索内容相关联的商品或服务。</p>\n<p align=\"left\">请您注意，单独的设备信息、浏览器类型或仅搜索关键词信息无法识别您的身份，不属于您的个人信息，我们有权以任何的目的对其进行使用；只有当您的设备信息、浏览器类型或搜索关键词信息与您的其他信息相互结合使用并可以识别您的身份时，在结合使用期间，我们会将您的设备信息、浏览器类型或搜索关键词信息作为您的个人信息，按照本隐私政策对其进行处理与保护。</p>\n<p align=\"left\">为了将您感兴趣的商品或服务信息展示给您，或在您搜索时向您展示您可能希望找到的商品或服务，我们可能会收集您的订单信息、浏览信息、您的兴趣爱好（您可以在账户信息中填写）进行数据分析以形成用户画像。我们还可能为了提供服务及改进服务质量的合理需要而获得的您的其他信息，包括您与客服联系时您提供的相关信息，您参与问卷调查时向我们发送的问卷答复信息，以及您与我们合作伙伴之间互动时我们获得的相关信息。对于从您的各种设备上收集到的信息，我们可能会将它们进行关联，以便我们能在这些设备上为您提供一致的服务。我们可能会将来自某项服务的信息与来自其他服务的信息结合起来，以便为您提供服务、个性化内容和建议。如果您不希望受个性化内容的影响，您可以在商品展示页选择按照分类进行浏览和查找商品和服务。我们还在搜索结果中向您提供了按照价格、销量排序等不针对个人特征的选项；未经您的明确同意，我们不会将您的相关个人信息提供给第三方。</p>\n<p align=\"left\">（3）下单</p>\n<p align=\"left\">当您准备对您购物车内的商品进行结算时，dsshop系统会生成您购买该商品的订单。您需要在订单中至少填写您的收货人姓名、收货地址以及手机号码，同时该订单中会载明订单号、您所购买的商品或服务信息、您应支付的货款金额及支付方式；您可以另外填写收货人的固定电话、邮箱地址信息以增加更多的联系方式从而确保商品可以准确送达，但不填写这些信息不影响您订单的生成。</p>\n<p align=\"left\">您在dsshop上预订机票、火车票、酒店、跟团旅行、购买手机号卡或合约机、办理宽带等业务时，您还可能需要根据国家法律法规或服务提供方（包括票务销售方、酒店、旅行社及其授权的代理方、基础电信运营商、移动转售运营商等）的要求提供您的实名信息，这些实名信息可能包括您的身份信息（比如您的出生证明、户口本、身份证、军官证、护照、驾驶证等载明您身份信息的证件复印件或号码）、您本人的照片或视频、姓名、电话号码。这些订单中将可能包含您的行程、酒店地址、您指定的服务地址或设备安装地址（可能是您的家庭地址）信息。</p>\n<p align=\"left\">上述所有信息构成您的&ldquo;订单信息&rdquo;，我们将使用您的订单信息来进行您的身份核验、确定交易、支付结算、完成配送、为您查询订单以及提供客服咨询与售后服务。我们还会使用您的订单信息来判断您的交易是否存在异常以保护您的交易安全。</p>\n<p align=\"left\">（4）支付功能</p>\n<p align=\"left\">在您下单后，您可以选择dsshop的关联方或与dsshop合作的第三方支付机构（包括微信支付及银联、网联等支付通道，以下统称&ldquo;支付机构&rdquo;）所提供的支付服务。支付功能本身并不收集您的个人信息，但我们需要将您的dsshop订单号及交易金额信息与这些支付机构共享以实现其确认您的支付指令并完成支付。&ldquo;关联方&rdquo;指一方现在或将来控制、受控制或与其处于共同控制下的任何公司、机构以及上述公司或机构的法定代表人。&ldquo;控制&rdquo;是指直接或间接地拥有影响所提及公司管理的能力，无论是通过所有权、有投票权的股份、合同或其他被人民法院认定的方式。</p>\n<p align=\"left\">（5）交付产品与/或服务功能</p>\n<p align=\"left\">在当您下单并选择在线完成支付后，dsshop、供应商、与dsshop合作的商家或第三方配送公司（以下简称&ldquo;配送公司&rdquo;）将为您完成订单的交付。您知晓并同意dsshop、供应商、与dsshop合作的商家或配送公司会在上述环节内使用您的订单信息以保证您的订购的商品能够安全送达。</p>\n<p align=\"left\">我们的配送员在为您提供配送服务的同时，基于某些业务法律要求实名认证的需求，会协助您完成实名认证，例如在您购买手机号卡服务时。我们在此环节会使用您的身份证通过国家有权认证机构的专有设备对您的身份进行核验，我们不会在此环节收集您的身份证信息，且我们的配送员均须遵守公司保密制度的规定。</p>\n<p align=\"left\">（6）客服与售后功能</p>\n<p align=\"left\">我们的电话客服和售后功能会使用您的账号信息和订单信息。</p>\n<p align=\"left\">为保证您的账号安全，我们的呼叫中心客服和在线客服会使用您的账号信息与您核验您的身份。当您需要我们提供与您订单信息相关的客服与售后服务时，我们将会查询您的订单信息。您有可能会在与我们的客服人员沟通时，提供上述信息外的其他信息，例如当您要求我们变更配送地址、联系人或联系电话时。</p>\n<p align=\"left\">2、保障交易安全所必须的功能</p>\n<p align=\"left\">为提高您使用我们的产品与/或服务时系统的安全性，更准确地预防钓鱼网站欺诈和保护账户安全，我们可能会通过了解您的浏览信息、订单信息、您常用的软件信息、设备信息来判断您的账号风险，并可能会记录一些我们认为有风险的链接（&ldquo;URL&rdquo;&gt;）。我们也会收集您的设备信息对dsshop系统问题进行分析、统计流量并排查可能存在的风险，在您选择向我们发送异常信息时予以排查。</p>\n<p align=\"left\">（二）您可自主选择提供个人信息的情形</p>\n<p align=\"left\">1、为使您购物更便捷或更有乐趣，从而提升您在dsshop的网上购物体验，我们的以下扩展功能中可能会收集和使用您的个人信息。如果您不提供这些个人信息，您依然可以进行网上购物，但您可能无法使用为您带来购物乐趣的扩展功能或在购买某些商品时需要重复填写一些信息。这些扩展功能包括：</p>\n<p align=\"left\">（1）基于位置信息的个性化推荐功能：我们会收集您的位置信息（我们仅收集您当时所处的地理位置，但不会将您各时段的位置信息进行结合以判断您的行踪轨迹）来判断您所处的地点，自动为您推荐您所在区域可以购买的产品与/或服务，例如向您推荐离您最近的可选酒店。</p>\n<p align=\"left\">（2）基于摄像头（相机）的扩展功能：您可以使用这项扩展功能完成视频拍摄、拍照、扫码以及人脸识别登录的功能。当您使用人脸识别登录时我们会收集您的面部信息。未来我们可能会将人脸识别技术应用于更多场景，届时我们会再次与您确认您是否愿意我们使用您的面部信息来实现这些扩展功能。</p>\n<p align=\"left\">（3）基于图片上传的扩展功能：您可以在dsshop上传您的照片来实现拍照购物功能和晒单、评价及问答功能，我们会使用您所上传的图片或视频来识别您需要购买的产品与/或服务，或者使用包含您所上传图片或视频的晒单、评价及问答内容。</p>\n<p align=\"left\">（4）基于语音技术的扩展功能：您可以直接使用麦克风来进行语音购物或与我们的客服进行咨询和互动。在这些功能中我们会收集您的录音内容以识别您的购物需求以及客服与售后需求。</p>\n<p align=\"left\">（5）基于通讯录信息的扩展功能：在这项功能中我们将收集您的通讯录信息以方便您在购物时不需再手动输入您通讯录中联系人的信息（例如您可以直接为通讯录中的电话号码充值）。为了增加您购物时的社交乐趣，在获得您的同意时我们也可以判断您的好友是否也同为dsshop用户，并在dsshop为你们的交流建立联系。</p>\n<p align=\"left\">2、上述扩展功能可能需要您在您的设备中向我们开启您的地理位置（位置信息）、相机（摄像头）、相册（图片库）、麦克风以及通讯录的访问权限，以实现这些功能所涉及的信息的收集和使用。您可以在dsshop商城通过访问&ldquo;账户设置&mdash;通用&mdash;隐私设置&rdquo;页面逐项查看您上述权限的开启状态，并可以决定将这些权限随时的开启或关闭（我们会指引您在您的设备系统中完成设置）。请您注意，您开启这些权限即代表您授权我们可以收集和使用这些个人信息来实现上述功能，您关闭权限即代表您取消了这些授权，则我们将不再继续收集和使用您的这些个人信息，也无法为您提供上述与这些授权所对应的功能。您关闭权限的决定不会影响此前基于您的授权所进行的个人信息的处理。</p>\n<p align=\"left\">（三）您应充分知晓，以下情形中，我们收集、使用个人信息无需征得您的授权同意：</p>\n<p align=\"left\">1、与国家安全、国防安全有关的；<br />2、与公共安全、公共卫生、重大公共利益有关的；<br />3、与犯罪侦查、起诉、审判和判决执行等有关的；<br />4、出于维护个人信息主体或其他个人的生命、财产等重大合法权益但又很难得到本人同意的；<br />5、所涉及的个人信息是个人信息主体或监护人自行向社会公众公开的；<br />6、从合法公开披露的信息中收集的您的个人信息的，如合法的新闻报道、政府信息公开等渠道；<br />7、根据您的要求签订和履行合同所必需的；<br />8、用于维护所提供的产品与/或服务的安全稳定运行所必需的，例如发现、处置产品与/或服务的故障；<br />9、为合法的新闻报道所必需的；<br />10、学术研究机构基于公共利益开展统计或学术研究所必要，且对外提供学术研究或描述的结果时，对结果中所包含的个人信息进行去标识化处理的；<br />11、法律法规规定的其他情形。</p>\n<p align=\"left\">（四）我们从第三方获得您个人信息的情形</p>\n<p align=\"left\">我们可能从第三方获取您授权共享的账户信息（头像、昵称），并在您同意本隐私政策后将您的第三方账户与您的dsshop账户绑定，使您可以通过第三方账户直接登录并使用我们的产品与/或服务。我们会将依据与第三方的约定，对个人信息来源的合法性进行确认后，在符合相关法律和法规规定的前提下，使用您的这些个人信息。</p>\n<p align=\"left\">（五）您个人信息使用的规则</p>\n<p align=\"left\">1、我们会根据本隐私政策的约定，为实现我们的产品与/或服务功能而对所收集的个人信息进行使用。</p>\n<p align=\"left\">2、在收集您的个人信息后，我们将通过技术手段对信息进行去标识化处理，去标识化处理的信息将无法识别主体。请您了解并同意，在此情况下我们有权使用已经去标识化的信息；并在不透露您个人信息的前提下，我们有权对用户数据库进行分析并予以商业化的利用。</p>\n<p align=\"left\">3、请您了解并同意，对于您在使用我们的产品与/或服务时所提供的所有个人信息，除非您删除或通过系统设置拒绝我们收集，否则将被视为在您使用我们的产品与/或服务期间持续授权同意我们使用。在您注销账号时，我们将停止使用并删除您的个人信息，具体请详见本隐私政策附件《dsshop账户注销须知》。</p>\n<p align=\"left\">4、我们会对我们的产品与/或服务使用情况进行统计，并可能会与公众或第三方共享这些统计信息，以展示我们的产品与/或服务的整体使用趋势。但这些统计信息不包含您的任何身份识别信息。</p>\n<p align=\"left\">5、当我们展示您的个人信息时，我们会采用包括内容替换、匿名处理方式对您的信息进行脱敏，以保护您的信息安全。</p>\n<p align=\"left\">6、当我们要将您的个人信息用于本隐私政策未载明的其它用途时，或基于特定目的收集而来的个人信息用于其他目的时，会事先征求您的明示同意。请您理解，我们向您提供的产品与/或服务将不断更新变化。如果您选择使用本隐私政策中尚未列明的其他产品与/或服务时，我们会在收集您的个人信息前通过协议、页面提示等方式向您详细说明信息收集的目的、方式、范围并征求您的同意。若您不同意提供前述信息，您可能无法使用该项产品与/或服务，但不影响您使用现有产品与/&lt;或服务。</p>\n<p align=\"left\">二、我们如何使用&nbsp;Cookies&nbsp;和同类技术</p>\n<p align=\"left\">（一）Cookies的使用</p>\n<p align=\"left\">1、为实现您联机体验的个性化需求，使您获得更轻松的访问体验。我们会在您的计算机或移动设备上发送一个或多个名为Cookies的小数据文件，指定给您的Cookies&nbsp;是唯一的，它只能被将Cookies发布给您的域中的Web服务器读取。我们向您发送Cookies是为了简化您重复登录的步骤、存储您的购物偏好或您购物车中的商品数据，进而为您提供购物的偏好设置、帮助您优化对广告的选择与互动、帮助判断您的登录状态以及账户或数据安全。</p>\n<p align=\"left\">2、我们不会将&nbsp;Cookies&nbsp;用于本隐私政策所述目的之外的任何用途。您可根据自己的偏好管理或删除&nbsp;Cookies。您可以清除计算机上保存的所有&nbsp;Cookies，大部分网络浏览器会自动接受&lt;Cookies，但您通常可根据自己的需要来修改浏览器的设置以拒绝&nbsp;Cookies；另外，您也可以清除软件内保存的所有Cookies。但如果您这么做，您可能需要在每一次访问dsshop网站时亲自更改用户设置，而且您之前所记录的相应信息也均会被删除，并且可能会对您所使用服务的安全性有一定影响。</p>\n<p align=\"left\">（二）网络Beacon和同类技术的使用</p>\n<p align=\"left\">除Cookies&nbsp;外，我们还会在网站上使用网络Beacon等其他同类技术。我们的网页上常会包含一些电子图像（称为\"单像素\" GIF&nbsp;文件或&nbsp;\"网络&nbsp;Beacon\"）。我们使用网络Beacon的方式有：</p>\n<p align=\"left\">1、通过在dsshop网站上使用网络Beacon，计算用户访问数量、停留时间，并通过访问&nbsp;Cookies&nbsp;辨认注册的dsshop用户；</p>\n<p align=\"left\">2、通过得到的Cookies信息，为您提供个性化服务。</p>\n<p align=\"left\">三、我们如何共享、转让、公开披露您的个人信息</p>\n<p align=\"left\">（一）共享</p>\n<p align=\"left\">1、我们不会与dsshop以外的任何公司、组织和个人共享您的个人信息，但以下情况除外：<br />（1）事先获得您明确的同意或授权；<br />（2）根据适用的法律法规、法律程序的要求、强制性的行政或司法要求所必须的情况下进行提供；<br />（3）在法律法规允许的范围内，为维护dsshop或合作伙伴、您或其他dsshop用户或社会公众利益、财产或安全免遭损害而有必要提供；<br />（4） 只有共享您的个人信息，才能实现我们的产品与/或服务的核心功能或提供您需要的服务；<br />（5）应您需求为您处理您与他人的纠纷或争议；<br />（6）符合与您签署的相关协议（包括在线签署的电子协议以及相应的平台规则）或其他的法律文件约定所提供；<br />（7）基于学术研究而使用；<br />（8）基于符合法律法规的社会公共利益而使用。</p>\n<p align=\"left\">2、我们可能会将您的个人信息与我们的关联方共享。但我们只会共享必要的个人信息，且受本隐私政策中所声明目的的约束。我们的关联方如要改变个人信息的处理目的，将再次征求您的授权同意。</p>\n<p align=\"left\">3、我们可能会向合作伙伴等第三方共享您的订单信息、账户信息、设备信息以及位置信息，以保障为您提供的服务顺利完成。但我们仅会出于合法、正当、必要、特定、明确的目的共享您的个人信息，并且只会共享提供产品/与或服务所必要的个人信息。我们的合作伙伴无权将共享的个人信息用于任何其他用途。&nbsp;我们的合作伙伴包括以下类型：</p>\n<p align=\"left\">（1）商品或技术服务的供应商。我们可能会将您的个人信息共享给支持我们功能的供应商。这些支持包括为我们供货或提供基础设施技术服务、物流配送服务、支付服务、数据处理等。我们共享这些信息的目的是可以实现我们产品与/或服务的核心购物功能，比如我们必须与物流服务供应商共享您的订单信息才能安排送货；当您下单的商品或服务由供应商直接发货或提供服务时，我们需要将您订单中的订购信息和收货信息共享给供应商，以指示其交付商品或提供服务。</p>\n<p align=\"left\">（2）第三方商家。我们必须将您的订单信息与交易有关的必要信息与第三方商家共享来实现您向其购买商品或服务的需求，并促使其可以完成后续的售后服务。</p>\n<p align=\"left\">（3）委托我们进行推广的合作伙伴（&ldquo;委托方&rdquo;）。有时我们会接受其他企业委托向使用我们产品与/或服务的用户群进行促销推广。我们可能会使用您的个人信息以及您的非个人信息集合形成的间接用户画像与委托方共享，但我们仅会向这些委托方提供推广的覆盖面和有效性的信息，而不会提供您的个人身份信息或者将这些信息进行汇总，以便提供该等信息并不会识别您个人。例如我们可以告知该委托方在浏览了委托方推广信息或在看到这些信息后购买了委托方的商品的人数，或者向委托方提供不能识别个人身份的统计信息，以帮助其了解受众或顾客。</p>\n<p align=\"left\">4、对我们与之共享个人信息的公司、组织和个人，我们会与其签署严格的保密协定，要求他们按照我们的说明、本隐私政策以及其他任何相关的保密和安全措施来处理个人信息。</p>\n<p align=\"left\">5、为了遵守法律、执行或适用我们的使用条件和其他协议，或者为了保护dsshop、您或其他dsshop用户的权利及其财产或安全，比如为防止欺诈等违法活动和减少信用风险，而与其他公司和组织交换信息。不过，这并不包括违反本隐私政策中所作的承诺而为获利目的出售、出租、共享或以其它方式披露的个人信息。</p>\n<p align=\"left\">（二）转让</p>\n<p align=\"left\">我们不会将您的个人信息转让给任何公司、组织和个人，但以下情况除外：</p>\n<p align=\"left\">1、事先获得您明确的同意或授权；</p>\n<p align=\"left\">2、根据适用的法律法规、法律程序的要求、强制性的行政或司法要求所必须的情况进行提供；</p>\n<p align=\"left\">3、符合与您签署的相关协议（包括在线签署的电子协议以及相应的平台规则）或其他的法律文件约定所提供；</p>\n<p align=\"left\">4、在涉及合并、收购、资产转让或类似的交易时，如涉及到个人信息转让，我们会要求新的持有您个人信息的公司、组织继续受本隐私政策的约束，否则，我们将要求该公司、组织重新征求您的授权同意。</p>\n<p align=\"left\">（三）公开披露</p>\n<p align=\"left\">我们仅会在以下情况下，且采取符合业界标准的安全防护措施的前提下，才会公开披露您的个人信息：</p>\n<p align=\"left\">1、根据您的需求，在您明确同意的披露方式下披露您所指定的个人信息；</p>\n<p align=\"left\">2、根据法律、法规的要求、强制性的行政执法或司法要求所必须提供您个人信息的情况下，我们可能会依据所要求的个人信息类型和披露方式公开披露您的个人信息。在符合法律法规的前提下，当我们收到上述披露信息的请求时，我们会要求必须出具与之相应的法律文件，如传票或调查函。我们坚信，对于要求我们提供的信息，应该在法律允许的范围内尽可能保持透明。我们对所有的请求都进行了慎重的审查，以确保其具备合法依据，且仅限于执法部门因特定调查目的且有合法权利获取的数据。在法律法规许可的前提下，我们披露的文件均在加密密钥的保护之下。</p>\n<p align=\"left\">四、我们如何保护和保存您的个人信息</p>\n<p align=\"left\">（一）我们保护您个人信息的技术与措施</p>\n<p align=\"left\">我们非常重视个人信息安全，并采取一切合理可行的措施，保护您的个人信息：</p>\n<p align=\"left\">1、数据安全技术措施</p>\n<p align=\"left\">我们会采用符合业界标准的安全防护措施，包括建立合理的制度规范、安全技术来防止您的个人信息遭到未经授权的访问使用、修改，避免数据的损坏或丢失。</p>\n<p align=\"left\">dsshop的网络服务采取了传输层安全协议等加密技术，通过https等方式提供浏览服务，确保用户数据在传输过程中的安全。</p>\n<p align=\"left\">dsshop采取加密技术对用户个人信息进行加密保存，并通过隔离技术进行隔离。</p>\n<p align=\"left\">在个人信息使用时，例如个人信息展示、个人信息关联计算，我们会采用包括内容替换、SHA256等多种数据脱敏技术增强个人信息在使用中的安全性。</p>\n<p align=\"left\">dsshop采用严格的数据访问权限控制和多重身份认证技术保护个人信息，避免数据被违规使用。</p>\n<p align=\"left\">dsshop采用代码安全自动检查、数据访问日志分析技术进行个人信息安全审计。</p>\n<p align=\"left\">2、dsshop为保护个人信息采取的其他安全措施</p>\n<p align=\"left\">dsshop通过建立数据分类分级制度、数据安全管理规范、数据安全开发规范来管理规范个人信息的存储和使用。</p>\n<p align=\"left\">dsshop通过信息接触者保密协议、监控和审计机制来对数据进行全面安全控制。</p>\n<p align=\"left\">3、我们仅允许有必要知晓这些信息的dsshop、合作伙伴访问个人信息，并为此设置了严格的访问权限控制和监控机制。我们同时要求可能接触到您个人信息的所有人员履行相应的保密义务。如果未能履行这些义务，可能会被追究法律责任或被终止与dsshop的合作关系。</p>\n<p align=\"left\">4、我们会采取一切合理可行的措施，确保未收集无关的个人信息。</p>\n<p align=\"left\">5、互联网并非绝对安全的环境，而且电子邮件、即时通讯、社交软件等与其他用户的交流方式无法确定是否完全加密，我们建议您使用此类工具时请使用复杂密码，并注意保护您的个人信息安全。在通过dsshop与第三方进行网上产品与/或服务的交易时，您不可避免的要向交易对方或潜在的交易对方披露自己的个人信息，如联络方式或者邮政地址等。请您妥善保护自己的个人信息，仅在必要的情形下向他人提供。</p>\n<p align=\"left\">6、安全事件处置</p>\n<p align=\"left\">为应对个人信息泄露、损毁和丢失等可能出现的风险，dsshop制定了多项制度，明确安全事件、安全漏洞的分类分级标准及相应的处理流程。dsshop也为安全事件建立了专门的应急响应团队，按照安全事件处置规范要求，针对不同安全事件启动安全预案，进行止损、分析、定位、制定补救措施并联合相关部门进行溯源和打击。</p>\n<p align=\"left\">一旦发生个人信息安全事件，我们将按照法律法规的要求，及时向您告知：安全事件的基本情况和可能的影响、我们已采取或将要采取的处置措施、您可自主防范和降低风险的建议、对您的补救措施等。我们同时将及时将事件相关情况以邮件、信函、电话、推送通知等方式告知您，当难以逐一告知个人信息主体时，我们会采取合理、有效的方式发布公告。同时，我们还将按照监管部门要求，主动上报个人信息安全事件的处置情况。</p>\n<p align=\"left\">7、互联网环境并非百分之百安全，我们将尽力确保或担保您发送给我们的任何信息的安全性。如果我们的物理、技术或管理防护设施遭到破坏，导致信息被非授权访问、公开披露、篡改或毁坏，导致您的合法权益受损，我们将承担相应的法律责任。</p>\n<p align=\"left\">8、如果您对我们的个人信息保护有任何疑问，可通过本隐私政策中约定的联系方式联系我们。如您发现自己的个人信息泄露，尤其是您的账户及密码发生泄露，请您立即通过本隐私政策中约定的联系方式联络我们，以便我们采取相应措施。</p>\n<p align=\"left\">（二）您个人信息的保存</p>\n<p align=\"left\">1、您的个人信息将存储于中华人民共和国境内。如您使用跨境交易服务，且需要向境外传输您的个人信息完成交易的，我们会单独征得您的授权同意并要求接收方按照我们的说明、本隐私政策以及其他任何相关的保密和安全措施来处理这些个人信息。</p>\n<p align=\"left\">2、在您使用我们的产品与/或服务期间，您的个人信息将在为了实现本政策所述目的之期限内保存，同时将结合法律有强制的留存要求期限的规定确定，如《中华人民共和国电子商务法》要求商品和服务信息、交易信息保存时间自交易完成之日起不少于三年。在超出保存期间后，我们会根据适用法律的要求删除您的个人信息，或进行匿名化处理。</p>\n<p align=\"left\">3、请您注意，当您成功注销dsshop账户后，我们将对您的个人信息进行删除或匿名化处理。当您或我们协助您删除相关信息后，因为适用的法律和安全技术限制，我们可能无法立即从备份系统中删除相应的信息，我们将安全地存储您的个人信息并限制对其的任何进一步的处理，直到备份可以删除或实现匿名化。</p>\n<p align=\"left\">4、如果我们终止服务或运营，我们会至少提前三十日向您通知，并在终止服务或运营后对您的个人信息进行删除或匿名化处理。</p>\n<p align=\"left\">五、您如何管理您的个人信息</p>\n<p align=\"left\">dsshop非常重视您对个人信息的关注，并尽全力保护您对于您个人信息访问、更正、删除以及撤回同意的权利，以使您拥有充分的能力保障您的隐私和安全。您的权利包括：</p>\n<p align=\"left\">1、访问和更正您的个人信息</p>\n<p align=\"left\">除法律法规规定外，您有权随时访问和更正您的个人信息，具体包括：<br />（1）您的账户信息：账户名称、个人资料信息：首页--&ldquo;我的&rdquo;--&ldquo;设置&rdquo;--\"个人资料\"。<br />（2）您的收货信息：首页--&ldquo;我的&rdquo;--&ldquo;设置&rdquo;-&ldquo;收货地址&rdquo;菜单中随时添加、更改、删除您的收货地址信息（包括收货人姓名、收货地址、收货人的电话号码或邮箱）；您也可以将最常用的收货地址设置为默认地址，如此，若您下次购买商品时未更改收货地址，您的商品会配送到该默认地址。<br />（3）您的订单信息：首页--&ldquo;我的&rdquo;--&ldquo;设置&rdquo;-&ldquo;订单&rdquo;页面查看您的所有已经完成、待付款或待售后的订单。您可以选择删除已经完成和已取消的订单来删除您的订单信息，但这样可能导致我们无法准确判断您的购买信息而难以提供相应的售后服务，您也无法对删除的订单使用我们的晒单和评价功能。。<br />（4）对于您在使用我们的产品与/或服务过程中产生的其他个人信息需要访问或更正，请随时联系我们。我们会根据本隐私政策所列明的方式和期限响应您的请求。<br />（5）您无法访问和更正的个人信息：除上述列明的信息外，您的部分个人信息我们无法为您提供访问和更正的服务，这些信息主要是为了提升您的用户体验和保证交易安全所收集的您的设备信息、您使用扩展功能时产生的个人信息。上述信息我们会在您的授权范围内进行使用，您无法访问和更正，但您可联系我们进行删除或做匿名化处理。</p>\n<p align=\"left\">2、删除您的个人信息</p>\n<p align=\"left\">您在我们的产品与/或服务页面中可以直接清除或删除的信息，包括订单信息、浏览信息、收货地址信息。</p>\n<p align=\"left\">在以下情形中，您可以向我们提出删除个人信息的请求：</p>\n<p align=\"left\">（1）如果我们处理个人信息的行为违反法律法规；<br />（2）如果我们收集、使用您的个人信息，却未征得您的同意；<br />（3）如果我们处理个人信息的行为违反了与您的约定；<br />（4）如果我们终止服务及运营。</p>\n<p align=\"left\">若我们决定响应您的删除请求，我们还将同时通知从我们获得您的个人信息的实体，要求其及时删除，除非法律法规另有规定，或这些实体已经获得您的独立授权。若我们响应您的删除请求，我们不能保证立即从备份系统中删除相应的信息，但会在备份系统更新时删除这些信息。</p>\n<p align=\"left\">3、改变您授权同意的范围或撤回您的授权</p>\n<p align=\"left\">您可以通过删除信息、关闭设备功能、在dsshop网站或软件中进行隐私设置等方式改变您授权我们继续收集个人信息的范围或撤回您的授权。您也可以通过注销账户的方式，撤回我们继续收集您个人信息的全部授权。</p>\n<p align=\"left\">请您理解，每个业务功能需要一些基本的个人信息才能得以完成，当您撤回同意或授权后，我们无法继续为您提供撤回同意或授权所对应的服务，也不再处理您相应的个人信息。但您撤回同意或授权的决定，不会影响此前基于您的授权而开展的个人信息处理。</p>\n<p align=\"left\">4、注销账户</p>\n<p align=\"left\">您可以在我们的产品中直接申请注销账户。您可以通过访问我的--设置-注销服务-完成账号注销；关于您注销账户的方式以及您应满足的条件，请详见<a href=\"https://ihelp.jd.com/n/help/tip/getTipsFacade.json?tipId=73\" target=\"_blank\" rel=\"noopener\">《dsshop账户注销须知》</a>。您注销账户后，我们将停止为您提供产品与/或服务，并依据您的要求，除法律法规另有规定外，我们将删除您的个人信息。</p>\n<p align=\"left\">5、如果您不想接受我们给您发送的促销信息，您可随时通过以下方式取消：</p>\n<p align=\"left\">（1）您可通过账户设置页面的邮件订阅菜单中取消邮件订阅的促销信息。<br />（2）您可以根据促销短信内容提示，来取消我们给您发送的手机促销短信。<br />（3）您可以通过移动端APP&ldquo;账户设置-设置-推送消息设置-通知&rdquo;设置是否接受我们通过&ldquo;通知&rdquo;推动给您的商品和促销信息。<br />（4）我们会与第三方的平台或媒体（&ldquo;平台&rdquo;）合作基于您的个人信息向您推荐个性化的商品。这些个人信息包括诸如在本网站的购物情况、访问本网站及关联方网站的情况及您在您的账户设置中填写的兴趣爱好。平台仅向我们提供了展示商品的窗口，窗口内容的链接是dsshop站内的个性化商品展示信息，由dsshop进行管理，因此我们不会向广告商提供您的任何个人信息。而且我们在推荐窗内设置了屏蔽功能，您可选择屏蔽您不喜欢的广告。如您不愿意接受dsshop在单个平台上的推荐服务，请联系平台进行关闭。您知晓并理解平台是自主经营的实体，dsshop无法对其进行管理。<br />（5）为了保护您的隐私，我们不会以任何方式和途径向您推送涉及宗教信仰、性用品等相关敏感内容的促销或商品信息给您。</p>\n<p align=\"left\">6、响应您的请求</p>\n<p align=\"left\">如果您无法通过上述方式访问、更正或删除您的个人信息，或您需要访问、更正或删除您在使用我们产品与/或服务时所产生的其他个人信息，或您认为dsshop存在任何违反法律法规或与您关于个人信息的收集或使用的约定，您均可以发送电子邮件至privacy@dsshop.test或通过本隐私政策中的其他方式与我们联系。为了保障安全，我们可能需要您提供书面请求，或提供您的身份证明文件，我们将在收到您反馈并验证您的身份后的15天内答复您的请求。对于您合理的请求，我们原则上不收取费用，但对多次重复、超出合理限度的请求，我们将视情收取一定成本费用。对于那些无端重复、需要过多技术手段（例如，需要开发新系统或从根本上改变现行惯例）、给他人合法权益带来风险或者非常不切实际（例如，涉及备份磁带上存放的信息）的请求，我们可能会予以拒绝。</p>\n<p align=\"left\">在以下情形中，按照法律法规要求，我们将无法响应您的请求：<br />（1）与个人信息控制者履行法律法规规定的义务相关的；<br />（&lt;2）与国家安全、国防安全有关的；<br />（3）与公共安全、公共卫生、重大公共利益有关的；<br />（4）与刑事侦查、起诉、审判和执行判决等有关的；<br />（5）有充分证据表明您存在主观恶意或滥用权利的；<br />（6）出于维护个人信息主体或其他个人的生命、财产等重大合法权益但又很难得到本人同意的；<br />（7）响应您的请求将导致您或其他个人、组织的合法权益受到严重损害的；<br />（8）涉及商业秘密的。</p>\n<p align=\"left\">六、未成年人的个人信息保护</p>\n<p align=\"left\">1、dsshop非常重视对未成年人个人信息的保护。若您是18周岁以下的未成年人，在使用我们的产品与/或服务前，应事先取得您监护人的同意。dsshop根据国家相关法律法规的规定保护未成年人的个人信息。</p>\n<p align=\"left\">2、我们不会主动直接向未成年人收集其个人信息。对于经监护人同意而收集未成年人个人信息的情况，我们只会在受到法律允许、监护人同意或者保护未成年人所必要的情况下使用、共享、转让或披露此信息。</p>\n<p align=\"left\">3、如果有事实证明未成年人并未取得监护人同意的情况下注册使用了我们的产品与/或服务，我们会与相关监护人协商，并设法尽快删除相关个人信息。</p>\n<p align=\"left\">4、对于可能涉及的不满14周岁的儿童个人信息，我们进一步采取以下措施予以保障：（1）对于收集到的儿童个人信息，我们除遵守本隐私政策关于用户个人信息的约定外，还会秉持正当必要、知情同意、目的明确、安全保障、依法利用的原则，严格遵循《儿童个人信息网络保护规定》等法律法规的要求进行存储、使用、披露，且不会超过实现收集、使用目的所必须的期限，到期后我们会对儿童个人信息进行删除或匿名化处理。我们会指定专人负责儿童个人信息保护事宜，并设立了儿童个人信息保护的专门邮箱childprivacy@dsshop.test。我们还会制定儿童个人信息保护的内部专门制度。<br />（2）当您作为监护人为被监护的儿童选择使用dsshop相关服务时，我们可能需要向您收集被监护的儿童个人信息，用于向您履行相关服务之必要。在具体服务中需要向您收集儿童个人信息的，我们会事先取得您的授权同意，并告知您收集的目的和用途。如果您不提供前述信息，您将无法享受我们提供的相关服务。此外，您在使用晒单、评价及问答功能分享商品相关信息时可能会主动向我们提供儿童个人信息，请您明确知悉并谨慎选择。您作为监护人应当正确履行监护职责，保护儿童个人信息安全。若儿童本人需要注册或使用我们的产品与/或服务，您应正确引导并予以监护。<br />（3）儿童或其监护人有权随时访问和更正儿童个人信息，还可以向我们提出更正和删除的请求。如您对儿童个人信息相关事宜有任何意见、建议或投诉、举报，请联系我们。我们会随时为您提供帮助。</p>\n<p align=\"left\">七、通知和修订</p>\n<p align=\"left\">1、为给您提供更好的服务以及随着dsshop业务的发展，本隐私政策也会随之更新。但未经您明确同意，我们不会削减您依据本隐私政策所应享有的权利。我们会通过在dsshop网站、dsshop移动端上发出更新版本并在生效前通过网站公告或以其他适当方式提醒您相关内容的更新，也请您访问dsshop以便及时了解最新的隐私政策。</p>\n<p align=\"left\">2、对于重大变更，我们还会提供更为显著的通知（我们会通过包括但不限于邮件、短信或在浏览页面做特别提示等方式，说明隐私政策的具体变更内容）。</p>\n<p align=\"left\">本隐私政策所指的重大变更包括但不限于：<br />（1）我们的服务模式发生重大变化。如处理个人信息的目的、处理的个人信息类型、个人信息的使用方式等；<br />（2）我们在所有权结构、组织架构等方面发生重大变化。如业务调整、破产并购等引起的所有者变更等；<br />（3）个人信息共享、转让或公开披露的主要对象发生变化；<br />（4）您参与个人信息处理方面的权利及其行使方式发生重大变化；<br />（5）我们负责处理个人信息安全的责任部门、联络方式及投诉渠道发生变化时；<br />（6）个人信息安全影响评估报告表明存在高风险时。</p>\n<p align=\"left\">3、我们还会将本隐私政策的旧版本存档，供您查阅。</p>\n<p align=\"left\">八、如何联系我们</p>\n<p align=\"left\">1、如您对本隐私政策或您个人信息的相关事宜有任何问题、意见或建议，请通过以下方式与我们联系：<br />个人信息保护负责人邮箱privacy@dsshop.test<br />联系地址：dsshop总部<br />您还可以随时通过访问在线客服系统（https://help.dsshop.test）或拨打我们的任何一部客服电话等多种方式与我们联系。</p>\n<p align=\"left\">2、一般情况下，我们将在15天内回复。如果您对我们的回复不满意，特别是我们的个人信息处理行为损害了您的合法权益，您还可以向网信、电信、公安及工商等监管部门进行投诉或举报。</p>', '2020-10-30 12:17:04', '2020-12-07 17:31:26'),
(2, 2, '<p>dsshop用户注册协议</p>\n<p>版本生效日期：2020年12月07日</p>\n<p>一、服务条款的确认及接受</p>\n<p>1、dsshop网站（指dsshop.test及其移动客户端软件、应用程序，以下称&ldquo;本网站&rdquo;）各项电子服务的所有权和运作权归属于&ldquo;dsshop&rdquo;所有，本网站提供的服务将完全按照其发布的服务条款和操作规则严格执行。您确认所有服务条款并完成注册程序时，本协议在您与本网站间成立并发生法律效力，同时您成为本网站正式用户。</p>\n<p>2、根据国家法律法规变化及本网站运营需要，dsshop有权对本协议条款及相关规则不时地进行修改，修改后的内容一旦以任何形式公布在本网站上即生效，并取代此前相关内容，您应不时关注本网站公告、提示信息及协议、规则等相关内容的变动。您知悉并确认，如您不同意更新后的内容，应立即停止使用本网站；如您继续使用本网站，即视为知悉变动内容并同意接受。</p>\n<p>3、本协议内容中以加粗方式显著标识的条款，请您着重阅读。您点击&ldquo;同意&rdquo;按钮即视为您完全接受本协议，在点击之前请您再次确认已知悉并完全理解本协议的全部内容。</p>\n<p>二、服务须知</p>\n<p>1、本网站运用自身开发的操作系统通过国际互联网络为用户提供购买商品等服务。使用本网站，您必须：</p>\n<ul>\n<li>（1）自行配备上网的所需设备，包括个人手机、平板电脑、调制解调器、路由器等；</li>\n<li>（2）自行负担个人上网所支付的与此服务有关的电话费用、网络费用等；</li>\n<li>（3）选择与所安装终端设备相匹配的软件版本，包括但不限于iOS、Android、Windows等多个dsshop发布的应用版本。</li>\n</ul>\n<p>2、基于本网站所提供的网络服务的重要性，您确认并同意：</p>\n<ul>\n<li>（1）提供的注册资料真实、准确、完整、合法有效，注册资料如有变动的，应及时更新；</li>\n<li>（2）如果您提供的注册资料不合法、不真实、不准确、不详尽的，您需承担因此引起的相应责任及后果，并且dsshop保留终止您使用本网站各项服务的权利。</li>\n</ul>\n<p>三、订单</p>\n<p>1、使用本网站下订单，您应具备购买相关商品的权利能力和行为能力，如果您在18周岁以下，您需要在监护人的监护参与下才能注册并使用本网站。在下订单的同时，即视为您满足上述条件，并对您在订单中提供的所有信息的真实性负责。</p>\n<p>2、在您下订单时，请您仔细确认所购商品的名称、价格、数量、型号、规格、尺寸、联系地址、电话、收货人等信息。收货人与您本人不一致的，收货人的行为和意思表示视为您的行为和意思表示，您应对收货人的行为及意思表示的法律后果承担连带责任。</p>\n<p>3、您理解并同意：本网站上销售商展示的商品和价格等信息仅仅是要约邀请，您下单时须填写您希望购买的商品数量、价款及支付方式、收货人、联系方式、收货地址（合同履行地点）、合同履行方式等内容；系统生成的订单信息是计算机信息系统根据您填写的内容自动生成的数据，仅是您向销售商发出的合同要约；销售商收到您的订单信息后，只有在销售商将您在订单中订购的商品从仓库实际直接向您发出时（以商品出库为标志），方视为您与销售商之间就实际直接向您发出的商品建立了合同关系；如果您在一份订单里订购了多种商品并且销售商只给您发出了部分商品时，您与销售商之间仅就实际直接向您发出的商品建立了合同关系，只有在销售商实际直接向您发出了订单中订购的其他商品时，您和销售商之间就订单中其他已实际直接向您发出的商品才成立合同关系；对于电子书、数字音乐、在线手机充值等数字化商品，您下单并支付货款后合同即成立。当您作为消费者为生活消费需要下单并支付货款的情况下，您货款支付成功后即视为您与销售商之间就已支付货款部分的订单建立了合同关系。</p>\n<p>4、尽管销售商做出最大的努力，但由于市场变化及各种以合理商业努力难以控制因素的影响，本网站无法避免您提交的订单信息中的商品出现缺货、价格标示错误等情况；如您下单所购买的商品出现以上情况，您有权取消订单，销售商亦有权自行取消订单，若您已经付款，则为您办理退款。</p>\n<p>四、配送和交付</p>\n<p>1、您在本网站购买的商品将按照本网站上您所指定的送货地址进行配送。订单信息中列出的送货时间为参考时间，参考时间的计算是根据库存状况、正常的处理过程和送货时间、送货地点的基础上估计得出的。您应当清楚准确地填写您的送货地址、联系人及联系方式等配送信息，您知悉并确认，您所购买的商品应仅由您填写的联系人接受身份查验后接收商品，因您变更联系人或相关配送信息而造成的损失由您自行承担。</p>\n<p>2、因如下情况造成订单延迟或无法配送等，本网站将无法承担迟延配送或无法配送的责任：</p>\n<ul>\n<li>（1）客户提供错误信息和不详细的地址；</li>\n<li>（2）货物送达无人签收或拒收，由此造成的重复配送所产生的费用及相关的后果。</li>\n<li>（3）不可抗力，例如：自然灾害及恶劣天气、交通戒严等政府、司法机关的行为、决定或命令、意外交通事故、罢工、法规政策的修改、恐怖事件、抢劫、抢夺等暴力犯罪、突发战争等。</li>\n</ul>\n<p>3、您在本网站购买的商品由第三方配送公司（包括顺丰、圆通等，以下称&ldquo;配送公司&rdquo;）为您完成订单交付的，系统或单据记录的签收时间为交付时间；您购买的商品采用在线传输方式交付的，销售商向您指定系统发送的时间为交付时间；您购买服务的，生成的电子或者实物凭证中载明的时间为交付时间。</p>\n<p>五、用户个人信息保护及授权</p>\n<p>1、您知悉并同意，为方便您使用本网站相关服务，本网站将存储您在使用时的必要信息，包括但不限于您的真实姓名、性别、生日、配送地址、联系方式、通讯录、相册、日历、定位信息等。除法律法规规定的情形外，未经您的许可dsshop不会向第三方公开、透露您的个人信息。dsshop对相关信息采取专业加密存储与传输方式，利用合理措施保障用户个人信息的安全。</p>\n<p>2、您知悉并确认，您在注册帐号或使用本网站的过程中，需要提供真实的身份信息，dsshop将根据国家法律法规相关要求，进行基于移动电话号码的真实身份信息认证。若您提供的信息不真实、不完整，则无法使用本网站或在使用过程中受到限制，同时，由此产生的不利后果，由您自行承担。</p>\n<p>3、您在使用本网站某一特定服务时，该服务可能会另有单独的协议、相关业务规则等（以下统称为&ldquo;单独协议&rdquo;），您在使用该项服务前请阅读并同意相关的单独协议；您使用前述特定服务，即视为您已阅读并同意接受相关单独协议。</p>\n<p>4、您充分理解并同意：</p>\n<ul>\n<li>（1）接收通过邮件、短信、电话等形式，向在本网站注册、购物的用户、收货人发送的订单信息、促销活动等内容；</li>\n<li>（2）为配合行政监管机关、司法机关执行工作，在法律规定范围内dsshop有权向上述行政、司法机关提供您在使用本网站时所储存的相关信息，包括但不限于您的注册信息等，或使用相关信息进行证据保全，包括但不限于公证、见证等；</li>\n<li>（3）dsshop依法保障您在安装或使用过程中的知情权和选择权，在您使用本网站服务过程中，涉及您设备自带功能的服务会提前征得您同意，您一经确认，dsshop有权开启包括但不限于收集地理位置、读取通讯录、使用摄像头、启用录音等提供服务必要的辅助功能。</li>\n<li>（4）dsshop有权根据实际情况，在法律规定范围内自行决定单个用户在本网站及服务中数据的最长储存期限以及用户日志的储存期限，并在服务器上为其分配数据最大存储空间等。</li>\n</ul>\n<p>六、用户行为规范</p>\n<p>1、您同意严格遵守法律法规规章规定，依法遵守以下义务：</p>\n<ul>\n<li>（1）不得制作、传输或发表以下违法信息资料：反对宪法所确定的基本原则，煽动抗拒、破坏宪法和法律法规实施的；危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的，煽动推翻社会主义制度的；损害国家荣誉和利益的；歪曲、丑化、亵渎、否定英雄烈士事迹和精神，侵害英雄烈士的姓名、肖像、名誉、荣誉的；宣扬或煽动实施恐怖主义、极端主义及其活动的；煽动民族仇恨、民族歧视、破坏民族团结的言论；破坏国家宗教政策，宣扬邪教和封建迷信的；散布谣言，扰乱经济秩序和社会秩序的；散布淫秽、色情、暴力或者教唆犯罪的；侮辱或者诽谤他人，侵害他人名誉、隐私和其他合法权益的；法律、行政法规禁止的其他内容。</li>\n<li>（2）防范和抵制制作、复制、发布含有下列内容的不良信息资料：标题严重夸张，发表内容与标题严重不符的；不当评述自然灾害、重大事故等灾难的；煽动人群歧视、地域歧视等的；宣扬低俗、庸俗、媚俗内容的；违反社会公德行为的；侵犯未成年人合法权益的；其他对网络生态造成不良影响的内容。</li>\n</ul>\n<p>2、本协议依据国家相关法律法规规章制定，您亦同意严格遵守以下义务：</p>\n<ul>\n<li>（1）从中国大陆向境外传输资料信息时必须符合中国有关法规；</li>\n<li>（2）不得利用本网站从事洗钱、窃取商业秘密、窃取个人信息等违法犯罪活动；</li>\n<li>（3）不得干扰本网站的正常运转，不得侵入本网站及国家计算机信息系统；</li>\n<li>（4）不得传输或发表任何违法犯罪的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的、不文明的等信息资料；</li>\n<li>（5）不得教唆他人从事违法违规或本协议、平台规则所禁止的行为；</li>\n<li>（6）不得利用在本网站注册的账户进行牟利性经营活动；</li>\n<li>（7）不得发布任何侵犯他人个人信息、著作权、商标权等知识产权或合法权利的内容；</li>\n</ul>\n<p>3、您须对自己在网上的言论和行为承担法律责任，您若在本网站上散布和传播反动、色情或其它违反国家法律的信息，本网站的系统记录有可能作为您违反法律的证据。</p>\n<p>七、本网站使用规范</p>\n<p>1、关于移动客户端软件的获取与更新：</p>\n<ul>\n<li>（1）您可以直接从dsshop网站上获取dsshop移动客户端软件，也可以从得到dsshop授权的第三方获取，如果您从未经dsshop授权的第三方获取软件或与dsshop移动客户端软件名称相同的安装程序，dsshop无法保证该软件能够正常使用，并对因此给您造成的损失不予负责；</li>\n<li>（2）为了改善用户体验、完善服务内容，dsshop将不断努力开发新的服务，并为您不时提供软件更新，新版本发布后，旧版本的软件可能无法使用，dsshop不保证旧版本软件继续可用及相应的客户服务，请您随时核对并下载最新版本。</li>\n</ul>\n<p>2、除非法律允许或dsshop书面许可，您使用本网站过程中不得从事下列行为：</p>\n<ul>\n<li>（1）删除本网站及其副本上关于著作权的信息；</li>\n<li>（2）对本网站进行反向工程、反向汇编、反向编译，或者以其他方式尝试发现本网站的源代码；</li>\n<li>（3）对dsshop拥有知识产权的内容进行使用、出租、出借、复制、修改、链接、转载、汇编、发表、出版、建立镜像站点等；</li>\n<li>（4）对本网站或者本网站运行过程中释放到任何终端内存中的数据、网站运行过程中客户端与服务器端的交互数据，以及本网站运行所必需的系统数据，进行复制、修改、增加、删除、挂接运行或创作任何衍生作品，形式包括但不限于使用插件、外挂或非经dsshop授权的第三方工具/服务接入本网站和相关系统；</li>\n<li>（5）通过修改或伪造网站运行中的指令、数据，增加、删减、变动网站的功能或运行效果，或者将用于上述用途的软件、方法进行运营或向公众传播，无论这些行为是否为商业目的；</li>\n<li>（6）通过非dsshop开发、授权的第三方软件、插件、外挂、系统，登录或使用本网站及服务，或制作、发布、传播上述工具；</li>\n<li>（7）自行或者授权他人、第三方软件对本网站及其组件、模块、数据进行干扰。</li>\n</ul>\n<p>八、违约责任</p>\n<p>1、如果dsshop发现或收到他人举报投诉您违反本协议约定或存在任何恶意行为的，dsshop有权不经通知随时对相关内容进行删除、屏蔽，并视行为情节对违规帐号处以包括但不限于警告、限制或禁止使用部分或全部功能、帐号封禁、注销等处罚，并公告处理结果。</p>\n<p>2、dsshop有权依据合理判断对违反有关法律法规或本协议规定的行为采取适当的法律行动，并依据法律法规保存有关信息向有关部门报告等，您应独自承担由此而产生的一切法律责任。</p>\n<p>3、您理解并同意，因您违反本协议或相关服务条款的规定，导致或产生第三方主张的任何索赔、要求或损失，您应当独立承担责任；dsshop因此遭受损失的，您也应当一并赔偿。</p>\n<p>4、除非另有明确的书面说明,dsshop不对本网站的运营及其包含在本网站上的信息、内容、材料、产品（包括软件）或服务作任何形式的、明示或默示的声明或担保（根据中华人民共和国法律另有规定的以外）。</p>\n<p>九、所有权及知识产权</p>\n<p>1、您一旦接受本协议，对于您提供、上传、创作、发布在本网站的文字、评论、图片、照片、视频、音频等任何形式的信息内容（包括但不限于客户评价、客户咨询、各类话题文章等），您免费授予dsshop及其关联公司至保护期终止为止、不可撤销的、全球范围的、排他的许可使用著作权（包括并不限于：复制权、发行权、出租权、展览权、表演权、放映权、广播权、信息网络传播权、摄制权、改编权、翻译权、汇编权以及应当由著作权人享有的其他可许可使用的权利）、肖像权、用户ID名称等相关的全部合法权利权益，就dsshop具有诉讼主体资格的权利、权益，dsshop有权以自身名义对第三方侵权行为取证及提起诉讼。您同意dsshop及其关联公司有权存储、使用、复制、修订、编辑、发布、展示、翻译、分发、推广、出版、发行、信息网络传播您以上信息内容，有权改编制作派生作品，并以已知或日后开发的形式、媒体或技术将上述信息纳入其它作品内。</p>\n<p>2、dsshop有权再许可给其他第三方第九条第一款的所有权利。</p>\n<p>3、您应确保在dsshop网站上发表的第九条第一款各类信息内容均不涉及侵犯第三方肖像、隐私、知识产权或其他合法权益。否则dsshop有权随时采取包括但不限于删除、断开链接等措施。</p>\n<p>4、本协议已经构成《中华人民共和国著作权法》第二十四条（条文序号依照2010年修订版《著作权法》确定）及相关法律规定的著作财产权等权利许可使用的书面协议，其效力及于您在本网站上发布的任何受著作权法保护的作品内容，无论该等内容形成于本协议订立前还是本协议订立后。</p>\n<p>5、您同意并已充分了解本协议的条款，承诺不将已发表于本网站的信息，以任何形式发布或授权其它主体以任何方式使用（包括但不限于在各类网站、媒体上使用）。</p>\n<p>6、除法律另有强制性规定外，未经dsshop明确的特别书面同意,任何单位或个人不得以任何方式非法地全部或部分复制、转载、引用、链接、抓取或以其他方式使用本网站的信息内容，否则，dsshop有权追究其法律责任。</p>\n<p>7、本网站所刊登的资料信息（诸如文字、图表、标识、按钮图标、图像、声音文件片段、数字下载、数据编辑和软件），均是dsshop或其内容提供者的财产，受中国和国际版权法的保护。本网站上所有内容的汇编是dsshop的排他财产，受中国和国际版权法的保护。本网站上所有软件都是dsshop或其关联公司或其软件供应商的财产，受中国和国际版权法的保护。</p>\n<p>十、法律管辖适用及其他</p>\n<p>1、本协议的订立、执行和解释及争议的解决均应适用中国法律。如双方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，应向协议签订地有管辖权的人民法院提起诉讼。本协议签订地为中华人民共和国北京市大兴区。</p>\n<p>2、如果本协议中任何一条被视为废止、无效或因任何理由不可执行，该条应视为可分的且并不影响任何其余条款的有效性和可执行性。</p>\n<p>3、本协议未明示授权的其他权利仍由dsshop保留，您在行使这些权利时须另外取得dsshop的书面许可。dsshop如果未行使前述任何权利，并不构成对该权利的放弃。</p>\n<p><br /><br /></p>', '2020-10-30 12:35:04', '2020-12-07 17:31:17'),
(3, 3, '<p>亲爱的dsshop个人消费者用户：</p>\n<p>您在申请注销流程中点击同意前，应当认真阅读《dsshop账户注销须知》（以下称&ldquo;《注销须知》&rdquo;）。</p>\n<p>请您务必审慎阅读、充分理解《注销须知》中相关条款内容，其中包括：</p>\n<p>1、与您约定免除或限制责任的条款；</p>\n<p>2、其他以粗体标识的重要条款。</p>\n<p>如您对本《注销须知》有任何疑问，可拨打我们的客服电话联系客服，您也可联系在线客服或通过https://help.dsshop.test自助查询。</p>\n<p>【特别提示】当您按照注销页面提示填写信息、阅读并同意本《注销须知》及相关条款与条件且完成全部注销程序后，即表示您已充分阅读、理解并接受本《注销须知》的全部内容。阅读本《注销须知》的过程中，如果您不同意相关任何条款和条件约定，请您立即停止账户注销程序。</p>\n<p>我们在此善意地提醒您，您注销账户的行为会给您的售后维权带来诸多不便，且注销dsshop账户后，您的个人信息我们只会在dsshop商城的前台系统中去除，使其保持不可被检索、访问的状态，或对其进行匿名化处理。您知晓并理解，根据相关法律规定，相关交易记录须在dsshop后台保存5年甚至更长的时间。</p>\n<p>1、如果您仍执意注销账户，您的账户需同时满足以下条件：</p>\n<p>（1）在最近一个月内，账户没有进行更改密码、更改绑定信息等敏感操作；</p>\n<p>（2）自愿放弃账户在dsshop商城系统中的资产和虚拟权益（包括但不限于账户余额、优惠券等），并确保账户中无拍卖保证金、无欠款；</p>\n<p>（3）账户内无未完成的订单和服务；</p>\n<p>（4）在dsshop商城没有过使用该账户激活店铺的记录；</p>\n<p>（5）账户无任何纠纷，包括投诉举报或被投诉举报；</p>\n<p>（6）账户对应的dsshop支付账户已注销，且已妥善处理了dsshop支付账户下的所有问题；</p>\n<p>（7）账户已经解除与其他网站、其他APP的授权登录或绑定关系。</p>\n<p>2、dsshop账户一旦被注销将不可恢复，请您在操作之前自行备份dsshop账户相关的所有信息和数据。请您保存好订单商品和服务的交易凭证、票据等资料，否则您有可能须支付额外的账户和订单查询费用，或无法享受售后服务。</p>\n<p>3、如果您的dsshop账户同时是dsshop平台商家店铺的绑定账户名，您需先解除相关绑定；</p>\n<p>4、在dsshop账户注销期间，如果您的dsshop账户涉及争议纠纷，包括但不限于投诉、举报、诉讼、仲裁、国家有权机关调查等，dsshop有权自行终止本dsshop账户的注销而无需另行得到您的同意。</p>\n<p>5、注销dsshop账户，您将无法再使用本dsshop账户，也将无法找回您dsshop账户中及与账户相关的任何内容或信息，包括但不限于：</p>\n<p>（1）您将无法登录、使用本dsshop账户；</p>\n<p>（2）本dsshop账户的个人资料和历史信息（包括但不限于用户名、头像、购物记录、关注信息等）都将无法找回；</p>\n<p>（3）您通过dsshop账户使用、授权登录或绑定dsshop账户后使用的dsshop相关或第三方的其他服务的所有记录将无法找回。您将无法再登录、使用前述服务，您曾获得的余额、优惠券、积分、资格、订单及其他卡券等视为您自行放弃，将无法继续使用。您理解并同意，dsshop无法协助您重新恢复前述服务。请您在提交注销申请前，务必先了解您须解绑的其他相关账户信息，具体可与我们的客服联系。</p>\n<p>6、注销本dsshop账户并不代表本dsshop账户注销前的账户行为和相关责任得到豁免或减轻。</p>\n<p>&nbsp;</p>', '2020-12-07 16:46:31', '2020-12-07 16:46:31');
INSERT INTO `columns` (`id`, `name`, `pid`, `keyword`, `describes`, `show`, `list`, `sort`, `pv`, `created_at`, `updated_at`) VALUES
(1, '协议', 0, '协议', '协议', 1, 1, 5, 0, '2020-10-28 17:24:04', '2020-12-07 13:41:45'),
(2, '付款方式', 0, '12312', '2222', 1, 1, 5, 0, '2020-10-28 21:33:15', '2020-10-31 15:03:39'),
(3, '消费者保障这是一个很长的测试标题看下能显示多长', 0, '消费者保障', '消费者保障', 1, 0, 5, 3, '2020-10-31 15:04:26', '2020-12-13 18:16:40');
INSERT INTO `column_propertys` (`id`, `column_id`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2020-10-28 17:24:04', '2020-12-07 13:41:45'),
(2, 2, NULL, '2020-10-28 21:33:15', '2020-10-28 21:33:15'),
(3, 3, '<p style=\"margin: 0px 0px 0px 5.25pt; padding: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: tahoma, arial, \'Hiragino Sans GB\', SimSun, sans-serif; vertical-align: baseline; background-color: #ffffff;\">&nbsp;&nbsp;为了更好的保障消费者，提升卖家的服务水平和商品质量。根据<span style=\"text-decoration-line: none; margin: 0px; padding: 0px; font: inherit; vertical-align: baseline;\">《消费者保障服务协议》约定的条款和条件及其他公示规则的规定，将卖家消保保证金缴存并止付锁定于其支付宝账户，在卖家未履行消费者保障服务承诺时用于对买家进行赔付的资金, 同时要求卖家在国家法律法规规定的期限内，保障买家在商品完好前提下的7天无理由退货权益，具体说明如下：&nbsp;</span></p>\n<p style=\"margin: 0px 0px 0px 5.25pt; padding: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: tahoma, arial, \'Hiragino Sans GB\', SimSun, sans-serif; vertical-align: baseline; background-color: #ffffff;\">&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: tahoma, arial, \'Hiragino Sans GB\', SimSun, sans-serif; vertical-align: baseline; background-color: #ffffff;\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">消保保证金</span></p>\n<p style=\"margin: 0px 0px 0px 5.25pt; padding: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: tahoma, arial, \'Hiragino Sans GB\', SimSun, sans-serif; vertical-align: baseline; background-color: #ffffff;\">&nbsp; &nbsp; &nbsp;消费者保障服务支持自买家完成支付宝担保交易付款之日起至交易成功后15天内保障买家权益，如有商品质量问题、描述不符或付款后未收到货等，全程支持退货退款，退货运费由卖家承担。若卖家不履行承诺，以卖家保证金给予先行赔付，保障每一个消费者的网购权益；</p>\n<p style=\"margin: 0px; padding: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: tahoma, arial, \'Hiragino Sans GB\', SimSun, sans-serif; vertical-align: baseline; background-color: #ffffff;\">&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: tahoma, arial, \'Hiragino Sans GB\', SimSun, sans-serif; vertical-align: baseline; background-color: #ffffff;\"><span style=\"margin: 0px; padding: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">7天无理由退货</span></p>\n<p style=\"margin: 0px; padding: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: tahoma, arial, \'Hiragino Sans GB\', SimSun, sans-serif; vertical-align: baseline; background-color: #ffffff;\">&nbsp; &nbsp; &nbsp; &nbsp;卖家在国家法律法规规定的期限内，保障买家在商品完好前提下的7天无理由退货权益。具体为：当买家购买支持&ldquo;7天无理由退货&rdquo;的商品，在签收货物7天内（签收当日第二天零时起计算时间，满168小时为7天），若因买家主观原因不愿完成本次交易，卖家有义务向买家提供退货服务；若卖家未履行其义务，则买家有权按照相关规则向发起对该卖家的维权，并申请&ldquo;7天无理由退货&rdquo;服务；</p>', '2020-10-31 15:04:26', '2020-10-31 15:37:17');
