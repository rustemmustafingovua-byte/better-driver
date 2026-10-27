.class public final Lba/l;
.super Lu9/p;
.source "SourceFile"


# static fields
.field public static final n:Lba/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lba/l;

    invoke-direct {v0}, Lu9/p;-><init>()V

    sput-object v0, Lba/l;->n:Lba/l;

    return-void
.end method


# virtual methods
.method public final R(Ly8/h;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Lba/e;->o:Lba/e;

    const/4 p1, 0x1

    iget-object p0, p0, Lba/h;->n:Lba/c;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lba/c;->c(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public final S(Ly8/h;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lba/e;->o:Lba/e;

    const/4 p1, 0x1

    iget-object p0, p0, Lba/h;->n:Lba/c;

    invoke-virtual {p0, p2, p1, p1}, Lba/c;->c(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public final U(I)Lu9/p;
    .locals 1

    invoke-static {p1}, Lz9/b;->a(I)V

    sget v0, Lba/k;->d:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lu9/p;->U(I)Lu9/p;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method
