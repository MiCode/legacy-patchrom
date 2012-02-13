.class public Landroid/renderscript/Script$Builder;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mInvokableCount:I

.field mInvokables:[Landroid/renderscript/Script$Invokable;

.field mIsRoot:Z

.field mNames:[Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;

.field mTypes:[Landroid/renderscript/Type;

.field mWritable:[Z


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 2
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/renderscript/Script$Builder;->mIsRoot:Z

    iput v0, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    iput-object p1, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    new-array v0, v1, [Landroid/renderscript/Type;

    iput-object v0, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/renderscript/Script$Builder;->mNames:[Ljava/lang/String;

    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/renderscript/Script$Builder;->mWritable:[Z

    new-array v0, v1, [Landroid/renderscript/Script$Invokable;

    iput-object v0, p0, Landroid/renderscript/Script$Builder;->mInvokables:[Landroid/renderscript/Script$Invokable;

    return-void
.end method


# virtual methods
.method public addInvokable(Ljava/lang/String;)Landroid/renderscript/Script$Invokable;
    .locals 4
    .parameter "func"

    .prologue
    new-instance v0, Landroid/renderscript/Script$Invokable;

    invoke-direct {v0}, Landroid/renderscript/Script$Invokable;-><init>()V

    .local v0, i:Landroid/renderscript/Script$Invokable;
    iput-object p1, v0, Landroid/renderscript/Script$Invokable;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    iput-object v1, v0, Landroid/renderscript/Script$Invokable;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    iput v1, v0, Landroid/renderscript/Script$Invokable;->mSlot:I

    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mInvokables:[Landroid/renderscript/Script$Invokable;

    iget v2, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public setRoot(Z)V
    .locals 0
    .parameter "r"

    .prologue
    iput-boolean p1, p0, Landroid/renderscript/Script$Builder;->mIsRoot:Z

    return-void
.end method

.method public setType(Landroid/renderscript/Type;I)V
    .locals 2
    .parameter "t"
    .parameter "slot"

    .prologue
    iget-object v0, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    aput-object p1, v0, p2

    iget-object v0, p0, Landroid/renderscript/Script$Builder;->mNames:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    return-void
.end method

.method public setType(Landroid/renderscript/Type;Ljava/lang/String;I)V
    .locals 1
    .parameter "t"
    .parameter "name"
    .parameter "slot"

    .prologue
    iget-object v0, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    aput-object p1, v0, p3

    iget-object v0, p0, Landroid/renderscript/Script$Builder;->mNames:[Ljava/lang/String;

    aput-object p2, v0, p3

    return-void
.end method

.method public setType(ZI)V
    .locals 1
    .parameter "writable"
    .parameter "slot"

    .prologue
    iget-object v0, p0, Landroid/renderscript/Script$Builder;->mWritable:[Z

    aput-boolean p1, v0, p2

    return-void
.end method

.method transferCreate()V
    .locals 5

    .prologue
    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v2, p0, Landroid/renderscript/Script$Builder;->mIsRoot:Z

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->nScriptSetRoot(Z)V

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/BaseObj;->mID:I

    iget-object v3, p0, Landroid/renderscript/Script$Builder;->mWritable:[Z

    aget-boolean v3, v3, v0

    iget-object v4, p0, Landroid/renderscript/Script$Builder;->mNames:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/renderscript/RenderScript;->nScriptSetType(IZLjava/lang/String;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script$Builder;->mInvokables:[Landroid/renderscript/Script$Invokable;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Script$Invokable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/renderscript/RenderScript;->nScriptSetInvokable(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method transferObject(Landroid/renderscript/Script;)V
    .locals 3
    .parameter "s"

    .prologue
    iget-boolean v1, p0, Landroid/renderscript/Script$Builder;->mIsRoot:Z

    iput-boolean v1, p1, Landroid/renderscript/Script;->mIsRoot:Z

    iget-object v1, p0, Landroid/renderscript/Script$Builder;->mTypes:[Landroid/renderscript/Type;

    iput-object v1, p1, Landroid/renderscript/Script;->mTypes:[Landroid/renderscript/Type;

    iget v1, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    new-array v1, v1, [Landroid/renderscript/Script$Invokable;

    iput-object v1, p1, Landroid/renderscript/Script;->mInvokables:[Landroid/renderscript/Script$Invokable;

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget v1, p0, Landroid/renderscript/Script$Builder;->mInvokableCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Landroid/renderscript/Script;->mInvokables:[Landroid/renderscript/Script$Invokable;

    iget-object v2, p0, Landroid/renderscript/Script$Builder;->mInvokables:[Landroid/renderscript/Script$Invokable;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    iget-object v1, p1, Landroid/renderscript/Script;->mInvokables:[Landroid/renderscript/Script$Invokable;

    aget-object v1, v1, v0

    iput-object p1, v1, Landroid/renderscript/Script$Invokable;->mScript:Landroid/renderscript/Script;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/renderscript/Script;->mInvokables:[Landroid/renderscript/Script$Invokable;

    return-void
.end method
