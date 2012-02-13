.class Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1$1;
.super Ljava/lang/Object;
.source "LegalReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1;->handleResponse(Lcom/motorola/blur/service/blur/WSResponseParcel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1;

.field final synthetic val$activity:Lcom/motorola/blur/setup/LegalReaderActivity;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1;Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1$1;->this$1:Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1;

    iput-object p2, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1$1;->val$activity:Lcom/motorola/blur/setup/LegalReaderActivity;

    iput-object p3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    iget-object v1, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1$1;->val$activity:Lcom/motorola/blur/setup/LegalReaderActivity;

    iget-object v1, v1, Lcom/motorola/blur/setup/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1$1;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1$1;->val$activity:Lcom/motorola/blur/setup/LegalReaderActivity;

    iget-boolean v1, v1, Lcom/motorola/blur/setup/LegalReaderActivity;->mProgressShowing:Z

    if-ne v1, v5, :cond_0

    .line 227
    iget-object v1, p0, Lcom/motorola/blur/setup/LegalReaderActivity$LegalService$1$1;->val$activity:Lcom/motorola/blur/setup/LegalReaderActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/LegalReaderActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 230
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "BlurLRA"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Dialog wasn\'t present"

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
