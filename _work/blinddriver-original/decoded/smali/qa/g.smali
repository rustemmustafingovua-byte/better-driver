.class public final Lqa/g;
.super Lla/e0;
.source "SourceFile"


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:J

.field public final o:Lbb/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLbb/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqa/g;->m:Ljava/lang/String;

    iput-wide p2, p0, Lqa/g;->n:J

    iput-object p4, p0, Lqa/g;->o:Lbb/p;

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, Lqa/g;->n:J

    return-wide v0
.end method

.method public final d()Lla/t;
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lqa/g;->m:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v1, Lla/t;->c:Lr9/i;

    :try_start_0
    invoke-static {p0}, Ll7/a;->o(Ljava/lang/String;)Lla/t;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final e()Lbb/i;
    .locals 0

    iget-object p0, p0, Lqa/g;->o:Lbb/p;

    return-object p0
.end method
