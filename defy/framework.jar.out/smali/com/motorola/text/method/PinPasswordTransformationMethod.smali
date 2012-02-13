.class public Lcom/motorola/text/method/PinPasswordTransformationMethod;
.super Landroid/text/method/PasswordTransformationMethod;
.source "PinPasswordTransformationMethod.java"


# static fields
.field public static final PRIVATE_IME_OPTIONS_SIM:Ljava/lang/String; = "SIMPINPUK"

.field private static sInstance:Lcom/motorola/text/method/PinPasswordTransformationMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    return-void
.end method

.method public static apply(Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"

    .prologue
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->getInstance()Lcom/motorola/text/method/PinPasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const-string v0, "SIMPINPUK"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/motorola/text/method/PinPasswordTransformationMethod;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/text/method/PinPasswordTransformationMethod;->sInstance:Lcom/motorola/text/method/PinPasswordTransformationMethod;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/text/method/PinPasswordTransformationMethod;->sInstance:Lcom/motorola/text/method/PinPasswordTransformationMethod;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/motorola/text/method/PinPasswordTransformationMethod;

    invoke-direct {v0}, Lcom/motorola/text/method/PinPasswordTransformationMethod;-><init>()V

    sput-object v0, Lcom/motorola/text/method/PinPasswordTransformationMethod;->sInstance:Lcom/motorola/text/method/PinPasswordTransformationMethod;

    sget-object v0, Lcom/motorola/text/method/PinPasswordTransformationMethod;->sInstance:Lcom/motorola/text/method/PinPasswordTransformationMethod;

    goto :goto_0
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/PasswordTransformationMethod;->onTextChanged(Ljava/lang/CharSequence;III)V

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
