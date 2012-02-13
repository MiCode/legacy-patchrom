.class public Lcom/android/phone/CurrentCountryListActivity;
.super Landroid/app/ListActivity;
.source "CurrentCountryListActivity.java"


# static fields
.field private static final ADD_NEW_DIALOG_ID:I = 0x1

.field private static final ADD_NEW_MENU_ID:I = 0x2

.field private static final CHANGE_COUNTRY_ID:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DUP_CTRY_DIALOG_ID:I = 0x3

.field private static final HELP_DIALOG_ID:I = 0x0

.field private static final HELP_MENU_ID:I = 0x1

.field private static final INVALID_MCC:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "CurrentCountryListActivity"

.field private static final RESET_CUR_DIALOG_ID:I = 0x2

.field private static final RESET_CUR_MENU_ID:I = 0x3

.field private static final VDBG:Z


# instance fields
.field private mCtryNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/AssistedDialingUtil$CtryListNode;",
            ">;"
        }
    .end annotation
.end field

.field mNewCtryDg:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->DBG:Z

    .line 59
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/CurrentCountryListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CurrentCountryListActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/phone/CurrentCountryListActivity;->updateSettingDb(I)V

    return-void
.end method

.method private handleChangeCurCtry(I)V
    .locals 3
    .parameter "mcc"

    .prologue
    .line 243
    invoke-static {p1}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 244
    .local v0, entryInfo:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_2

    .line 245
    invoke-direct {p0, p1}, Lcom/android/phone/CurrentCountryListActivity;->updateSettingDb(I)V

    .line 247
    const/4 v1, -0x1

    iput v1, v0, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    .line 248
    sget-boolean v1, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleChangeCurCtry addUnknownCountry"

    invoke-direct {p0, v1}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-static {v0}, Lcom/android/phone/AssistedDialingUtil;->addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 252
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    .line 255
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelAssistedDialingUnknownMcc()V

    .line 256
    sget-boolean v1, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "handleChangeCurCtry clear notification"

    invoke-direct {p0, v1}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    sget-boolean v1, Lcom/android/phone/CurrentCountryListActivity;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeCurCtry get null entry, mcc ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initNewCtryDg(Landroid/app/Dialog;)V
    .locals 25
    .parameter "dg"

    .prologue
    .line 295
    const v2, 0x7f070027

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v0, v2

    check-cast v0, Landroid/widget/EditText;

    move-object v4, v0

    .line 296
    .local v4, mCtryName:Landroid/widget/EditText;
    const v2, 0x7f070028

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v0, v2

    check-cast v0, Landroid/widget/EditText;

    move-object v5, v0

    .line 297
    .local v5, mCtryCode:Landroid/widget/EditText;
    const v2, 0x7f070029

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v0, v2

    check-cast v0, Landroid/widget/EditText;

    move-object v6, v0

    .line 298
    .local v6, mCtryIdd:Landroid/widget/EditText;
    const v2, 0x7f07002a

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v0, v2

    check-cast v0, Landroid/widget/EditText;

    move-object v7, v0

    .line 299
    .local v7, mCtryNdd:Landroid/widget/EditText;
    const v2, 0x7f07002b

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v0, v2

    check-cast v0, Landroid/widget/EditText;

    move-object v8, v0

    .line 300
    .local v8, mAreaCode:Landroid/widget/EditText;
    const v2, 0x7f07002c

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v0, v2

    check-cast v0, Landroid/widget/EditText;

    move-object v9, v0

    .line 301
    .local v9, mNumLen:Landroid/widget/EditText;
    const v2, 0x7f07002d

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object v0, v2

    check-cast v0, Landroid/widget/Button;

    move-object v15, v0

    .line 302
    .local v15, mSaveButton:Landroid/widget/Button;
    const v2, 0x7f07002e

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object v0, v2

    check-cast v0, Landroid/widget/Button;

    move-object/from16 v24, v0

    .line 305
    .local v24, mCancelButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/phone/CurrentCountryListActivity$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/phone/CurrentCountryListActivity$3;-><init>(Lcom/android/phone/CurrentCountryListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 317
    new-instance v10, Lcom/android/phone/CurrentCountryListActivity$4;

    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    move-object v14, v4

    invoke-direct/range {v10 .. v15}, Lcom/android/phone/CurrentCountryListActivity$4;-><init>(Lcom/android/phone/CurrentCountryListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V

    .line 333
    .local v10, watcher:Landroid/text/TextWatcher;
    invoke-virtual {v4, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 334
    invoke-virtual {v5, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 335
    invoke-virtual {v6, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 337
    new-instance v2, Lcom/android/phone/CurrentCountryListActivity$5;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CurrentCountryListActivity$5;-><init>(Lcom/android/phone/CurrentCountryListActivity;)V

    move-object/from16 v0, v24

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    new-instance v16, Lcom/android/phone/CurrentCountryListActivity$6;

    move-object/from16 v17, p0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    invoke-direct/range {v16 .. v23}, Lcom/android/phone/CurrentCountryListActivity$6;-><init>(Lcom/android/phone/CurrentCountryListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 399
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 442
    const-string v0, "CurrentCountryListActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method private updateSettingDb(I)V
    .locals 5
    .parameter "mcc"

    .prologue
    const-string v4, " "

    .line 411
    invoke-static {p1}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 412
    .local v0, entryInfo:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/android/phone/CurrentCountryListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 415
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-boolean v2, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update Setting db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 424
    :cond_0
    const-string v2, "cur_country_name"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 426
    const-string v2, "cur_country_mcc"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    const-string v2, "cur_country_code"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    const-string v2, "cur_country_idd"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 432
    const-string v2, "cur_country_ndd"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 434
    const-string v2, "cur_country_area_code"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 436
    const-string v2, "cur_country_mdn_len"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 227
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/phone/CurrentCountryListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/AssistedDialingUtil$CtryListNode;

    .line 228
    .local v2, node:Lcom/android/phone/AssistedDialingUtil$CtryListNode;
    iget v1, v2, Lcom/android/phone/AssistedDialingUtil$CtryListNode;->mccCode:I

    .line 230
    .local v1, mcc:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 235
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 232
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/phone/CurrentCountryListActivity;->handleChangeCurCtry(I)V

    .line 233
    const/4 v3, 0x1

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/CurrentCountryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CurrentCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/phone/AssistedDialingUtil;->createCtryNameList(Landroid/content/res/Resources;Ljava/util/ArrayList;)V

    .line 86
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030001

    iget-object v2, p0, Lcom/android/phone/CurrentCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 88
    .local v0, mAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/phone/AssistedDialingUtil$CtryListNode;>;"
    invoke-virtual {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/CurrentCountryListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 91
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 218
    const v1, 0x7f0b03bd

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 219
    const/4 v1, 0x1

    const v2, 0x7f0b03c0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 221
    .local v0, item:Landroid/view/MenuItem;
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0b03bb

    .line 141
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 212
    :goto_0
    return-object v0

    .line 144
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b03b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 160
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "create add new country dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 161
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0e006c

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    .line 162
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 164
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->initNewCtryDg(Landroid/app/Dialog;)V

    .line 165
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    goto :goto_0

    .line 168
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "create reset country dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 169
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b03b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b03bc

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CurrentCountryListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CurrentCountryListActivity$1;-><init>(Lcom/android/phone/CurrentCountryListActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_3
    sget-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "create country name duplicate dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 198
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b03d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CurrentCountryListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CurrentCountryListActivity$2;-><init>(Lcom/android/phone/CurrentCountryListActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 96
    const/4 v0, 0x2

    const v1, 0x7f0b03af

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 97
    const/4 v0, 0x3

    const v1, 0x7f0b03b0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 98
    const v0, 0x7f0b03ae

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 99
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 126
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->showDialog(I)V

    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/phone/CurrentCountryListActivity;->showDialog(I)V

    move v0, v1

    .line 130
    goto :goto_0

    .line 132
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->showDialog(I)V

    move v0, v1

    .line 133
    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 107
    sget-boolean v0, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    if-nez v0, :cond_0

    .line 108
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    :goto_0
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isUnknownCtryEntryExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    :goto_1
    return v1

    .line 110
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 117
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onWindowFocusChanged(Z)V

    .line 265
    if-eqz p1, :cond_1

    .line 268
    sget-boolean v0, Lcom/android/phone/AssistedDialingUtil;->isCtryListChanged:Z

    if-eqz v0, :cond_0

    .line 269
    sput-boolean v2, Lcom/android/phone/AssistedDialingUtil;->isCtryListChanged:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/phone/CurrentCountryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity;->mCtryNameList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/phone/AssistedDialingUtil;->createCtryNameList(Landroid/content/res/Resources;Ljava/util/ArrayList;)V

    .line 271
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    sget-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onWindowFocusChanged, get ctry list again!"

    invoke-direct {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 275
    :cond_0
    sget-boolean v0, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/android/phone/CurrentCountryListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 277
    sget-boolean v0, Lcom/android/phone/CurrentCountryListActivity;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onWindowFocusChanged, registerForContextMenu!"

    invoke-direct {p0, v0}, Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CurrentCountryListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/android/phone/CurrentCountryListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    goto :goto_0
.end method
