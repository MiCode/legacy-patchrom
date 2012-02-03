.class Lcom/android/phone/OtaUtils$3;
.super Ljava/lang/Object;
.source "OtaUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OtaUtils;->onClickOtaActivateSkipButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaUtils;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/phone/OtaUtils$3;->this$0:Lcom/android/phone/OtaUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/phone/OtaUtils$3;->this$0:Lcom/android/phone/OtaUtils;

    #calls: Lcom/android/phone/OtaUtils;->otaPerformActivation()V
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->access$200(Lcom/android/phone/OtaUtils;)V

    .line 764
    return-void
.end method
