.class Landroid/renderscript/ProgramFragment$Builder$Slot;
.super Ljava/lang/Object;
.source "ProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragment$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Slot"
.end annotation


# instance fields
.field env:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

.field format:Landroid/renderscript/ProgramFragment$Builder$Format;

.field final synthetic this$0:Landroid/renderscript/ProgramFragment$Builder;


# direct methods
.method constructor <init>(Landroid/renderscript/ProgramFragment$Builder;Landroid/renderscript/ProgramFragment$Builder$EnvMode;Landroid/renderscript/ProgramFragment$Builder$Format;)V
    .locals 0
    .parameter
    .parameter "_env"
    .parameter "_fmt"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/renderscript/ProgramFragment$Builder$Slot;->this$0:Landroid/renderscript/ProgramFragment$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Landroid/renderscript/ProgramFragment$Builder$Slot;->env:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    .line 98
    iput-object p3, p0, Landroid/renderscript/ProgramFragment$Builder$Slot;->format:Landroid/renderscript/ProgramFragment$Builder$Format;

    .line 99
    return-void
.end method
