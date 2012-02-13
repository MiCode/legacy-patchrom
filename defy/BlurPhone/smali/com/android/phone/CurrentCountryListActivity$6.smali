.class Lcom/android/phone/CurrentCountryListActivity$6;
.super Ljava/lang/Object;
.source "CurrentCountryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CurrentCountryListActivity;->initNewCtryDg(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CurrentCountryListActivity;

.field final synthetic val$mAreaCode:Landroid/widget/EditText;

.field final synthetic val$mCtryCode:Landroid/widget/EditText;

.field final synthetic val$mCtryIdd:Landroid/widget/EditText;

.field final synthetic val$mCtryName:Landroid/widget/EditText;

.field final synthetic val$mCtryNdd:Landroid/widget/EditText;

.field final synthetic val$mNumLen:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/CurrentCountryListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/phone/CurrentCountryListActivity$6;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    iput-object p2, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mCtryName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mCtryCode:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mCtryNdd:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mCtryIdd:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mAreaCode:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mNumLen:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v1, -0x1

    const-string v12, " "

    .line 347
    iget-object v9, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mCtryName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/AssistedDialingUtil;->isCtryNameExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity$6;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/android/phone/CurrentCountryListActivity;->showDialog(I)V

    .line 394
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v9, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mCtryCode:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 352
    .local v2, ctryCode:I
    iget-object v9, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mCtryName:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, ctryName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mCtryNdd:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, ndd:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mCtryIdd:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, idd:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mAreaCode:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, areaCode:Ljava/lang/String;
    const/4 v7, -0x1

    .line 357
    .local v7, len:I
    iget-object v9, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mNumLen:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 358
    iget-object v9, p0, Lcom/android/phone/CurrentCountryListActivity$6;->val$mNumLen:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 362
    :cond_1
    iget-object v9, p0, Lcom/android/phone/CurrentCountryListActivity$6;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-virtual {v9}, Lcom/android/phone/CurrentCountryListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 363
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string v9, "cur_country_name"

    invoke-static {v8, v9, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 365
    const-string v9, "cur_country_mcc"

    invoke-static {v8, v9, v1}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    const-string v9, "cur_country_code"

    invoke-static {v8, v9, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    const-string v9, "cur_country_idd"

    invoke-static {v8, v9, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    const-string v9, "cur_country_ndd"

    invoke-static {v8, v9, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 370
    const-string v9, "cur_country_area_code"

    invoke-static {v8, v9, v6}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    const-string v9, "cur_country_mdn_len"

    invoke-static {v8, v9, v7}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    invoke-static {}, Lcom/android/phone/CurrentCountryListActivity;->access$000()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/CurrentCountryListActivity$6;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update Setting db when click save button: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/phone/CurrentCountryListActivity;->access$100(Lcom/android/phone/CurrentCountryListActivity;Ljava/lang/String;)V

    .line 378
    :cond_2
    new-instance v0, Lcom/motorola/android/telephony/MCCEntry;

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/telephony/MCCEntry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    .local v0, entry:Lcom/motorola/android/telephony/MCCEntry;
    invoke-static {v0}, Lcom/android/phone/AssistedDialingUtil;->addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 383
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    .line 386
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/AssistedDialingUtil;->isCtryListChanged:Z

    .line 389
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelAssistedDialingUnknownMcc()V

    .line 392
    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity$6;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    iget-object v1, v1, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0
.end method
