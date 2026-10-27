.class public final Lla/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:J

.field public C:Lm2/j;

.field public D:Loa/d;

.field public a:Lla/n;

.field public b:Lb0/l1;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Lc2/c0;

.field public f:Z

.field public g:Z

.field public h:Lla/b;

.field public i:Z

.field public j:Z

.field public k:Lla/b;

.field public l:Lla/b;

.field public m:Ljava/net/ProxySelector;

.field public n:Lla/b;

.field public o:Ljavax/net/SocketFactory;

.field public p:Ljavax/net/ssl/SSLSocketFactory;

.field public q:Ljavax/net/ssl/X509TrustManager;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Lza/c;

.field public u:Lla/g;

.field public v:Ll7/a;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lla/n;

    invoke-direct {v0}, Lla/n;-><init>()V

    iput-object v0, p0, Lla/u;->a:Lla/n;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lla/u;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lla/u;->d:Ljava/util/ArrayList;

    sget-object v0, Lma/e;->a:Ljava/util/TimeZone;

    new-instance v0, Lc2/c0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lc2/c0;-><init>(I)V

    iput-object v0, p0, Lla/u;->e:Lc2/c0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lla/u;->f:Z

    iput-boolean v0, p0, Lla/u;->g:Z

    sget-object v1, Lla/b;->l:Lla/b;

    iput-object v1, p0, Lla/u;->h:Lla/b;

    iput-boolean v0, p0, Lla/u;->i:Z

    iput-boolean v0, p0, Lla/u;->j:Z

    sget-object v0, Lla/b;->m:Lla/b;

    iput-object v0, p0, Lla/u;->k:Lla/b;

    sget-object v0, Lla/b;->n:Lla/b;

    iput-object v0, p0, Lla/u;->l:Lla/b;

    iput-object v1, p0, Lla/u;->n:Lla/b;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lla/u;->o:Ljavax/net/SocketFactory;

    sget-object v0, Lla/v;->F:Ljava/util/List;

    iput-object v0, p0, Lla/u;->r:Ljava/util/List;

    sget-object v0, Lla/v;->E:Ljava/util/List;

    iput-object v0, p0, Lla/u;->s:Ljava/util/List;

    sget-object v0, Lza/c;->a:Lza/c;

    iput-object v0, p0, Lla/u;->t:Lza/c;

    sget-object v0, Lla/g;->c:Lla/g;

    iput-object v0, p0, Lla/u;->u:Lla/g;

    const/16 v0, 0x2710

    iput v0, p0, Lla/u;->x:I

    iput v0, p0, Lla/u;->y:I

    iput v0, p0, Lla/u;->z:I

    const v0, 0xea60

    iput v0, p0, Lla/u;->A:I

    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lla/u;->B:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "unit"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lma/e;->b(J)I

    move-result p1

    iput p1, p0, Lla/u;->y:I

    return-void
.end method
