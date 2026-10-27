.class public final Lbd/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lbd/k;


# instance fields
.field public final a:Lsc/t;

.field public volatile b:Lbd/e;

.field public volatile c:Ljava/lang/String;

.field public volatile d:Z

.field public final e:Lx9/l0;

.field public final f:Lx9/l0;

.field public final g:Lx9/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbd/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbd/l;->Companion:Lbd/k;

    return-void
.end method

.method public constructor <init>(Lsc/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/l;->a:Lsc/t;

    new-instance p1, Lbd/e;

    sget-object v0, Lu8/r;->l:Lu8/r;

    invoke-direct {p1, v0}, Lbd/e;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lbd/l;->b:Lbd/e;

    const-string p1, ""

    iput-object p1, p0, Lbd/l;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, p0, Lbd/l;->e:Lx9/l0;

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lbd/l;->f:Lx9/l0;

    iput-object p1, p0, Lbd/l;->g:Lx9/l0;

    return-void
.end method


# virtual methods
.method public final a()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lbd/l;->g:Lx9/l0;

    return-object p0
.end method
