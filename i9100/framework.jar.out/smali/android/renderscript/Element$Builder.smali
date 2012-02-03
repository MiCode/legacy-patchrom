.class public Landroid/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 2
    .parameter "rs"

    .prologue
    const/16 v1, 0x8

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 382
    new-array v0, v1, [Landroid/renderscript/Element;

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 383
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 384
    return-void
.end method


# virtual methods
.method public add(Landroid/renderscript/Element;Ljava/lang/String;)V
    .locals 5
    .parameter "element"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 387
    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 388
    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v2, v2, 0x8

    new-array v0, v2, [Landroid/renderscript/Element;

    .line 389
    .local v0, e:[Landroid/renderscript/Element;
    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v2, v2, 0x8

    new-array v1, v2, [Ljava/lang/String;

    .line 390
    .local v1, s:[Ljava/lang/String;
    iget-object v2, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget-object v2, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 393
    iput-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 395
    .end local v0           #e:[Landroid/renderscript/Element;
    .end local v1           #s:[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p1, v2, v3

    .line 396
    iget-object v2, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p2, v2, v3

    .line 397
    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 398
    return-void
.end method

.method public create()Landroid/renderscript/Element;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 401
    iget-object v2, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 402
    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v0, v2, [Landroid/renderscript/Element;

    .line 403
    .local v0, ein:[Landroid/renderscript/Element;
    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v1, v2, [Ljava/lang/String;

    .line 404
    .local v1, sin:[Ljava/lang/String;
    iget-object v2, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget-object v2, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    new-instance v2, Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v3, v0, v1}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;)V

    return-object v2
.end method
