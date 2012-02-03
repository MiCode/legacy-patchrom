.class Landroid/renderscript/Type$Builder$Entry;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field mDim:Landroid/renderscript/Dimension;

.field mValue:I

.field final synthetic this$0:Landroid/renderscript/Type$Builder;


# direct methods
.method constructor <init>(Landroid/renderscript/Type$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Landroid/renderscript/Type$Builder$Entry;->this$0:Landroid/renderscript/Type$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
