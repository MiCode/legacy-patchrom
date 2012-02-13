.class Lcom/motorola/blur/setup/SignUpOrLogInActivity$3;
.super Ljava/lang/Object;
.source "SignUpOrLogInActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/SignUpOrLogInActivity;->drawScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$3;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$3;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #setter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mSelectedRadioId:I
    invoke-static {v0, p2}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$702(Lcom/motorola/blur/setup/SignUpOrLogInActivity;I)I

    .line 189
    return-void
.end method
