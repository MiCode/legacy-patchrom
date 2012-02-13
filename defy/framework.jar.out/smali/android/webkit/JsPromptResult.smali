.class public Landroid/webkit/JsPromptResult;
.super Landroid/webkit/JsResult;
.source "JsPromptResult.java"


# instance fields
.field private mStringResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    iput-object p1, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->confirm()V

    return-void
.end method

.method getStringResult()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    return-object v0
.end method

.method handleDefault()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    invoke-super {p0}, Landroid/webkit/JsResult;->handleDefault()V

    return-void
.end method
