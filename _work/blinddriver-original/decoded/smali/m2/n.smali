.class public abstract Lm2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lm2/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final a(Lf1/r;ZLi9/c;)Lf1/r;
    .locals 1

    new-instance v0, Lm2/b;

    invoke-direct {v0, p2, p1}, Lm2/b;-><init>(Li9/c;Z)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method
