.class public Lcom/android/phone/CdmaDisplayInfo;
.super Ljava/lang/Object;
.source "CdmaDisplayInfo.java"


# static fields
.field private static final DBG:Z

.field private static sDisplayInfoDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->DBG:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissDisplayInfoRecord()V
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Dissmissing Display Info Record..."

    invoke-static {v0}, Lcom/android/phone/CdmaDisplayInfo;->log(Ljava/lang/String;)V

    .line 77
    :cond_0
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    .line 81
    :cond_1
    return-void
.end method

.method public static displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "infoMsg"

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/phone/CdmaDisplayInfo;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayInfoRecord: infoMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaDisplayInfo;->log(Ljava/lang/String;)V

    .line 46
    :cond_0
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 53
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01c9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    .line 60
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 62
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 65
    sget-object v0, Lcom/android/phone/CdmaDisplayInfo;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 66
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 68
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 84
    const-string v0, "CdmaDisplayInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDisplayInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
