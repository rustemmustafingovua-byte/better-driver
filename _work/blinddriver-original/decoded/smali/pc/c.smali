.class public final Lpc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lnc/a;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lpc/c;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lmb/q;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Lmb/q;-><init>(I)V

    iput-object p1, p0, Lpc/c;->b:Lnc/a;

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lpc/f;

    invoke-direct {p1}, Lpc/f;-><init>()V

    iput-object p1, p0, Lpc/c;->b:Lnc/a;

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance p0, Ljava/lang/ThreadLocal;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    new-instance p0, Lpc/a;

    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
