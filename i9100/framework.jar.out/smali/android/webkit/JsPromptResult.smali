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
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 37
    return-void
.end method

.method getStringResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    return-object v0
.end method

.method handleDefault()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    .line 50
    invoke-super {p0}, Landroid/webkit/JsResult;->handleDefault()V

    .line 51
    return-void
.end method
