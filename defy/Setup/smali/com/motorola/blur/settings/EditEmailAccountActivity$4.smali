.class Lcom/motorola/blur/settings/EditEmailAccountActivity$4;
.super Ljava/lang/Object;
.source "EditEmailAccountActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditEmailAccountActivity;->setCopyForYahooPassword(ILandroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

.field final synthetic val$svc:I


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditEmailAccountActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$4;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iput p2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$4;->val$svc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$4;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iget-object v0, v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    iget v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$4;->val$svc:I

    xor-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->setPassword(ILjava/lang/String;)V

    .line 554
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 560
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 566
    return-void
.end method
