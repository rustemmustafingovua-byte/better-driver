.class public final Lu9/f1;
.super Ly8/a;
.source "SourceFile"

# interfaces
.implements Lu9/v0;


# static fields
.field public static final m:Lu9/f1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu9/f1;

    sget-object v1, Lu9/q;->m:Lu9/q;

    invoke-direct {v0, v1}, Ly8/a;-><init>(Ly8/g;)V

    sput-object v0, Lu9/f1;->m:Lu9/f1;

    return-void
.end method


# virtual methods
.method public final K(ZZLb0/k2;)Lu9/g0;
    .locals 0

    sget-object p0, Lu9/g1;->l:Lu9/g1;

    return-object p0
.end method

.method public final P(Li9/c;)Lu9/g0;
    .locals 0

    sget-object p0, Lu9/g1;->l:Lu9/g1;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    return-void
.end method

.method public final e(La9/c;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This job is always active"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isCancelled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final m()Ljava/util/concurrent/CancellationException;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This job is always active"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final start()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final t(Lu9/c1;)Lu9/j;
    .locals 0

    sget-object p0, Lu9/g1;->l:Lu9/g1;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonCancellable"

    return-object p0
.end method
