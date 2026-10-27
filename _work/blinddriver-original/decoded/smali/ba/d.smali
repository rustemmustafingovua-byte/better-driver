.class public final Lba/d;
.super Lu9/p0;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final n:Lba/d;

.field public static final o:Lu9/p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lba/d;

    invoke-direct {v0}, Lu9/p;-><init>()V

    sput-object v0, Lba/d;->n:Lba/d;

    sget-object v0, Lba/l;->n:Lba/l;

    sget v1, Lz9/t;->a:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0xc

    const-string v3, "kotlinx.coroutines.io.parallelism"

    invoke-static {v1, v2, v3}, Lz9/b;->l(IILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lba/l;->U(I)Lu9/p;

    move-result-object v0

    sput-object v0, Lba/d;->o:Lu9/p;

    return-void
.end method


# virtual methods
.method public final R(Ly8/h;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lba/d;->o:Lu9/p;

    invoke-virtual {p0, p1, p2}, Lu9/p;->R(Ly8/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final S(Ly8/h;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lba/d;->o:Lu9/p;

    invoke-virtual {p0, p1, p2}, Lu9/p;->S(Ly8/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Ly8/i;->l:Ly8/i;

    invoke-virtual {p0, v0, p1}, Lba/d;->R(Ly8/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method
