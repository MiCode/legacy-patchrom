.class Lcom/android/phone/NetworkSetting$7;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v0, v0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    .line 394
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, -0x2712

    #setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$1202(Lcom/android/phone/NetworkSetting;I)I

    .line 397
    return-void
.end method
