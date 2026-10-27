.class public final Ldd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Ldd/d;


# instance fields
.field public final a:Lsc/o;

.field public volatile b:Ljava/lang/Object;

.field public volatile c:Lg5/m;

.field public volatile d:Ljava/util/Map;

.field public final e:Lx9/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldd/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldd/e;->Companion:Ldd/d;

    return-void
.end method

.method public constructor <init>(Lsc/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd/e;->a:Lsc/o;

    sget-object p1, Lu8/s;->l:Lu8/s;

    iput-object p1, p0, Ldd/e;->b:Ljava/lang/Object;

    new-instance v0, Lg5/m;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p1, p1, v1}, Lg5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Ldd/e;->c:Lg5/m;

    iput-object p1, p0, Ldd/e;->d:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Ldd/e;->e:Lx9/l0;

    return-void
.end method


# virtual methods
.method public final a(III)Ldd/c;
    .locals 3

    iget-object v0, p0, Ldd/e;->b:Ljava/lang/Object;

    sget-object v1, Ldd/e;->Companion:Ldd/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Ldd/d;->a(III)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd/c;

    iget-object p0, p0, Ldd/e;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Ldd/d;->a(III)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd/c;

    if-eqz v0, :cond_0

    iget p1, v0, Ldd/c;->d:I

    const/4 p2, 0x3

    if-lt p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-wide/16 p0, 0x0

    const/16 p2, 0x2f

    invoke-static {v0, p0, p1, p2}, Ldd/c;->a(Ldd/c;DI)Ldd/c;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p0, :cond_2

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method
