.class public Landroid/view/FocusFinderHelper;
.super Ljava/lang/Object;
.source "FocusFinderHelper.java"


# instance fields
.field private mFocusFinder:Landroid/view/FocusFinder;


# direct methods
.method public constructor <init>(Landroid/view/FocusFinder;)V
    .locals 0
    .parameter "focusFinder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    return-void
.end method

.method public static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "source"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "source"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 1
    .parameter "srcRect"
    .parameter "destRect"
    .parameter "direction"

    .prologue
    iget-object v0, p0, Landroid/view/FocusFinderHelper;->mFocusFinder:Landroid/view/FocusFinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method
