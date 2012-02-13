.class public Lcom/android/phone/SimPinUnlockPanel;
.super Landroid/app/Activity;
.source "SimPinUnlockPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimPinUnlockPanel$2;,
        Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimPinUnlockPanel"

.field private static final VDBG:Z


# instance fields
.field private mUnlockDialog:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/SimPinUnlockPanel;->DBG:Z

    .line 57
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/SimPinUnlockPanel;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SimPinUnlockPanel;->mUnlockDialog:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    .line 86
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/phone/SimPinUnlockPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/phone/SimPinUnlockPanel;->DBG:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 442
    const-string v0, "SimPinUnlockPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPinUnlock] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/phone/SimPinUnlockPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate()..."

    invoke-static {v0}, Lcom/android/phone/SimPinUnlockPanel;->log(Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/SimPinUnlockPanel;->requestWindowFeature(I)Z

    .line 66
    new-instance v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-direct {v0, p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SimPinUnlockPanel;->mUnlockDialog:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    .line 67
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel;->mUnlockDialog:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->show()V

    .line 68
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel;->mUnlockDialog:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    new-instance v1, Lcom/android/phone/SimPinUnlockPanel$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SimPinUnlockPanel$1;-><init>(Lcom/android/phone/SimPinUnlockPanel;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/phone/SimPinUnlockPanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy()..."

    invoke-static {v0}, Lcom/android/phone/SimPinUnlockPanel;->log(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel;->mUnlockDialog:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel;->mUnlockDialog:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel;->mUnlockDialog:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->dismiss()V

    .line 81
    :cond_1
    return-void
.end method
