.class public abstract Lgd/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr9/i;

.field public static final b:Lla/v;

.field public static final c:Lia/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr9/i;

    const-string v1, "access_token=[^&\\s\"]+"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgd/h;->a:Lr9/i;

    new-instance v0, Lla/u;

    invoke-direct {v0}, Lla/u;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "unit"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Lma/e;->b(J)I

    move-result v1

    iput v1, v0, Lla/u;->x:I

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lla/u;->a(J)V

    new-instance v1, Lgd/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgd/g;-><init>(I)V

    iget-object v2, v0, Lla/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lla/v;

    invoke-direct {v1, v0}, Lla/v;-><init>(Lla/u;)V

    sput-object v1, Lgd/h;->b:Lla/v;

    new-instance v0, Lgd/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    invoke-static {v0}, Lr5/u0;->b(Li9/c;)Lia/r;

    move-result-object v0

    sput-object v0, Lgd/h;->c:Lia/r;

    return-void
.end method

.method public static a(Ljava/lang/String;La9/c;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v0, Lba/d;->n:Lba/d;

    new-instance v1, Lgd/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lgd/f;-><init>(Ljava/lang/String;Ly8/c;I)V

    invoke-static {v0, v1, p1}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "text"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgd/h;->a:Lr9/i;

    const-string v1, "access_token=***"

    invoke-virtual {v0, p0, v1}, Lr9/i;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
