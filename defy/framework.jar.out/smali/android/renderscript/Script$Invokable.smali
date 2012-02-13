.class public Landroid/renderscript/Script$Invokable;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Invokable"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;

.field mScript:Landroid/renderscript/Script;

.field mSlot:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/renderscript/Script$Invokable;->mSlot:I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/renderscript/Script$Invokable;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script$Invokable;->mScript:Landroid/renderscript/Script;

    iget v1, v1, Landroid/renderscript/BaseObj;->mID:I

    iget v2, p0, Landroid/renderscript/Script$Invokable;->mSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptInvoke(II)V

    return-void
.end method
