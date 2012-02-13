.class public Lcom/android/phone/SmscSettings;
.super Landroid/app/Activity;
.source "SmscSettings.java"


# static fields
.field private static final EVENT_GET_SMSC_DONE:I = 0x28

.field private static final EVENT_SET_SMSC_DONE:I = 0x29


# instance fields
.field private SMSC:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private smsc_number:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SmscSettings;->phone:Lcom/android/internal/telephony/Phone;

    .line 45
    new-instance v0, Lcom/android/phone/SmscSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SmscSettings$1;-><init>(Lcom/android/phone/SmscSettings;)V

    iput-object v0, p0, Lcom/android/phone/SmscSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SmscSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/SmscSettings;->SMSC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/SmscSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/phone/SmscSettings;->SMSC:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/SmscSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/SmscSettings;->smsc_number:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SmscSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/SmscSettings;->smsc_get()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SmscSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/SmscSettings;->smsc_set(Ljava/lang/String;)V

    return-void
.end method

.method private smsc_get()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/SmscSettings;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SmscSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 77
    return-void
.end method

.method private smsc_set(Ljava/lang/String;)V
    .locals 3
    .parameter "smsc"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/SmscSettings;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SmscSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v2, 0x7f030052

    invoke-virtual {p0, v2}, Lcom/android/phone/SmscSettings;->setContentView(I)V

    .line 90
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SmscSettings;->phone:Lcom/android/internal/telephony/Phone;

    .line 92
    const-string v2, "smsc"

    const-string v3, "SMSC number is *********"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const v2, 0x7f07016e

    invoke-virtual {p0, v2}, Lcom/android/phone/SmscSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/SmscSettings;->smsc_number:Landroid/widget/EditText;

    .line 95
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/SmscSettings;->SMSC:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lcom/android/phone/SmscSettings;->smsc_get()V

    .line 100
    const v2, 0x7f07016f

    invoke-virtual {p0, v2}, Lcom/android/phone/SmscSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 101
    .local v0, ref_button:Landroid/widget/Button;
    const v2, 0x7f070170

    invoke-virtual {p0, v2}, Lcom/android/phone/SmscSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 102
    .local v1, upd_button:Landroid/widget/Button;
    new-instance v2, Lcom/android/phone/SmscSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/SmscSettings$2;-><init>(Lcom/android/phone/SmscSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v2, Lcom/android/phone/SmscSettings$3;

    invoke-direct {v2, p0}, Lcom/android/phone/SmscSettings$3;-><init>(Lcom/android/phone/SmscSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    invoke-direct {p0}, Lcom/android/phone/SmscSettings;->smsc_get()V

    .line 134
    return-void
.end method
