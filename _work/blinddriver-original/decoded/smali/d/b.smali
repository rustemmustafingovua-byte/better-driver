.class public final Ld/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg5/i;

.field public final b:Lb/h0;


# direct methods
.method public constructor <init>(Lg5/i;Lb/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/b;->a:Lg5/i;

    iput-object p2, p0, Ld/b;->b:Lb/h0;

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one dispatcher (NavigationEventDispatcher or OnBackPressedDispatcher) must be non-null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
