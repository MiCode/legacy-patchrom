.class public interface abstract Landroid/webkit/MotoWebViewCore;
.super Ljava/lang/Object;
.source "MotoWebViewCore.java"


# static fields
.field public static final CANCEL_SAVING:I = 0xca

.field public static final FIRST_CUSTOM_MESSAGE:I = 0xc9

.field public static final SAVE_PAGE:I = 0xc9

.field public static final SAVE_PAGE_MESSAGE_END:I = 0xcb

.field public static final SAVE_PAGE_MESSAGE_START:I = 0xc9


# virtual methods
.method public abstract getRSSLinks()[Landroid/webkit/MotoRSSLink;
.end method

.method public abstract getSavename()Ljava/lang/String;
.end method

.method public abstract hasRSSOrAtomContent()Z
.end method

.method public abstract motSendMessage(Landroid/os/Message;)V
.end method

.method public abstract nativeCancelSaving()V
.end method

.method public abstract nativeSavePage(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract onNativeSavingDone(ILjava/lang/String;)V
.end method

.method public abstract setSavename(Ljava/lang/String;)V
.end method

.method public abstract setWebViewCoreDelegate(Landroid/webkit/MotoWebViewCoreDelegate;)V
.end method
