.class public Landroid/renderscript/ProgramFragment$Builder;
.super Ljava/lang/Object;
.source "ProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragment$Builder$Slot;,
        Landroid/renderscript/ProgramFragment$Builder$Format;,
        Landroid/renderscript/ProgramFragment$Builder$EnvMode;
    }
.end annotation


# static fields
.field public static final MAX_TEXTURE:I = 0x2


# instance fields
.field mPointSpriteEnable:Z

.field mRS:Landroid/renderscript/RenderScript;

.field mSlots:[Landroid/renderscript/ProgramFragment$Builder$Slot;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/renderscript/ProgramFragment$Builder$Slot;

    iput-object v0, p0, Landroid/renderscript/ProgramFragment$Builder;->mSlots:[Landroid/renderscript/ProgramFragment$Builder$Slot;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramFragment$Builder;->mPointSpriteEnable:Z

    .line 107
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramFragment;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 123
    const/4 v3, 0x5

    new-array v2, v3, [I

    .line 124
    .local v2, tmp:[I
    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mSlots:[Landroid/renderscript/ProgramFragment$Builder$Slot;

    aget-object v3, v3, v5

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mSlots:[Landroid/renderscript/ProgramFragment$Builder$Slot;

    aget-object v3, v3, v5

    iget-object v3, v3, Landroid/renderscript/ProgramFragment$Builder$Slot;->env:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    iget v3, v3, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->mID:I

    aput v3, v2, v5

    .line 126
    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mSlots:[Landroid/renderscript/ProgramFragment$Builder$Slot;

    aget-object v3, v3, v5

    iget-object v3, v3, Landroid/renderscript/ProgramFragment$Builder$Slot;->format:Landroid/renderscript/ProgramFragment$Builder$Format;

    iget v3, v3, Landroid/renderscript/ProgramFragment$Builder$Format;->mID:I

    aput v3, v2, v6

    .line 128
    :cond_0
    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mSlots:[Landroid/renderscript/ProgramFragment$Builder$Slot;

    aget-object v3, v3, v6

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mSlots:[Landroid/renderscript/ProgramFragment$Builder$Slot;

    aget-object v3, v3, v6

    iget-object v3, v3, Landroid/renderscript/ProgramFragment$Builder$Slot;->env:Landroid/renderscript/ProgramFragment$Builder$EnvMode;

    iget v3, v3, Landroid/renderscript/ProgramFragment$Builder$EnvMode;->mID:I

    aput v3, v2, v7

    .line 130
    const/4 v3, 0x3

    iget-object v4, p0, Landroid/renderscript/ProgramFragment$Builder;->mSlots:[Landroid/renderscript/ProgramFragment$Builder$Slot;

    aget-object v4, v4, v6

    iget-object v4, v4, Landroid/renderscript/ProgramFragment$Builder$Slot;->format:Landroid/renderscript/ProgramFragment$Builder$Format;

    iget v4, v4, Landroid/renderscript/ProgramFragment$Builder$Format;->mID:I

    aput v4, v2, v3

    .line 132
    :cond_1
    const/4 v3, 0x4

    iget-boolean v4, p0, Landroid/renderscript/ProgramFragment$Builder;->mPointSpriteEnable:Z

    if-eqz v4, :cond_2

    move v4, v6

    :goto_0
    aput v4, v2, v3

    .line 133
    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v2}, Landroid/renderscript/RenderScript;->nProgramFragmentCreate([I)I

    move-result v0

    .line 134
    .local v0, id:I
    new-instance v1, Landroid/renderscript/ProgramFragment;

    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v3}, Landroid/renderscript/ProgramFragment;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 135
    .local v1, pf:Landroid/renderscript/ProgramFragment;
    iput v7, v1, Landroid/renderscript/Program;->mTextureCount:I

    .line 136
    return-object v1

    .end local v0           #id:I
    .end local v1           #pf:Landroid/renderscript/ProgramFragment;
    :cond_2
    move v4, v5

    .line 132
    goto :goto_0
.end method

.method public setPointSpriteTexCoordinateReplacement(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 118
    iput-boolean p1, p0, Landroid/renderscript/ProgramFragment$Builder;->mPointSpriteEnable:Z

    .line 119
    return-void
.end method

.method public setTexture(Landroid/renderscript/ProgramFragment$Builder$EnvMode;Landroid/renderscript/ProgramFragment$Builder$Format;I)V
    .locals 2
    .parameter "env"
    .parameter "fmt"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 111
    if-ltz p3, :cond_0

    const/4 v0, 0x2

    if-lt p3, v0, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAX_TEXTURE exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iget-object v0, p0, Landroid/renderscript/ProgramFragment$Builder;->mSlots:[Landroid/renderscript/ProgramFragment$Builder$Slot;

    new-instance v1, Landroid/renderscript/ProgramFragment$Builder$Slot;

    invoke-direct {v1, p0, p1, p2}, Landroid/renderscript/ProgramFragment$Builder$Slot;-><init>(Landroid/renderscript/ProgramFragment$Builder;Landroid/renderscript/ProgramFragment$Builder$EnvMode;Landroid/renderscript/ProgramFragment$Builder$Format;)V

    aput-object v1, v0, p3

    .line 115
    return-void
.end method
