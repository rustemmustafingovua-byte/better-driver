.class public final Lf2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/g1;


# instance fields
.field public final a:Lf2/j;


# direct methods
.method public constructor <init>(Lf2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/i;->a:Lf2/j;

    return-void
.end method


# virtual methods
.method public final a(Lf2/f1;)V
    .locals 0

    iget-object p0, p0, Lf2/i;->a:Lf2/j;

    iget-object p0, p0, Lf2/j;->a:Landroid/content/ClipboardManager;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->clearPrimaryClip()V

    return-void

    :cond_0
    iget-object p1, p1, Lf2/f1;->a:Landroid/content/ClipData;

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
