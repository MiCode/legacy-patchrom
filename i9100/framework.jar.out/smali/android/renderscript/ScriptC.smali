.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptC$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 38
    return-void
.end method
