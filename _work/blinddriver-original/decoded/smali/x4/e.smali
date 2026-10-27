.class public final Lx4/e;
.super Lu9/p;
.source "SourceFile"


# static fields
.field public static final n:Lx4/e;

.field public static final o:Lba/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx4/e;

    invoke-direct {v0}, Lu9/p;-><init>()V

    sput-object v0, Lx4/e;->n:Lx4/e;

    sget-object v0, Lu9/e0;->a:Lba/e;

    sput-object v0, Lx4/e;->o:Lba/e;

    return-void
.end method


# virtual methods
.method public final R(Ly8/h;Ljava/lang/Runnable;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lx4/e;->o:Lba/e;

    invoke-virtual {p0, p1, p2}, Lba/h;->R(Ly8/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final T(Ly8/h;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lx4/e;->o:Lba/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
