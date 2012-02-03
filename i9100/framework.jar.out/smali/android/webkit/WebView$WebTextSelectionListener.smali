.class public interface abstract Landroid/webkit/WebView$WebTextSelectionListener;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebTextSelectionListener"
.end annotation


# static fields
.field public static final EVENT_EXPANDED:I = 0x5

.field public static final EVENT_EXPAND_START:I = 0x3

.field public static final EVENT_FOCUS_LOST:I = 0x9

.field public static final EVENT_POSITION_CHANGED:I = 0x8

.field public static final EVENT_POSITION_CHANGE_START:I = 0x7

.field public static final EVENT_SELECTED:I = 0x2

.field public static final EVENT_SELECTION_CLEARED:I = 0x6


# virtual methods
.method public abstract onSelectionChanged(I)V
.end method
