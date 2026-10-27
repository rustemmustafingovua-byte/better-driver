.class public final Lx0/b;
.super Lu8/i;
.source "SourceFile"

# interfaces
.implements Lu0/e;


# static fields
.field public static final o:Lx0/b;


# instance fields
.field public final l:Ljava/lang/Object;

.field public final m:Ljava/lang/Object;

.field public final n:Lw0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lx0/b;

    sget-object v1, Ly0/b;->a:Ly0/b;

    sget-object v2, Lw0/b;->n:Lw0/b;

    invoke-direct {v0, v1, v1, v2}, Lx0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw0/b;)V

    sput-object v0, Lx0/b;->o:Lx0/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lw0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/b;->l:Ljava/lang/Object;

    iput-object p2, p0, Lx0/b;->m:Ljava/lang/Object;

    iput-object p3, p0, Lx0/b;->n:Lw0/b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lx0/b;->n:Lw0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lw0/b;->m:I

    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lx0/b;->n:Lw0/b;

    invoke-virtual {p0, p1}, Lw0/b;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lk/k0;

    iget-object v1, p0, Lx0/b;->l:Ljava/lang/Object;

    iget-object p0, p0, Lx0/b;->n:Lw0/b;

    invoke-direct {v0, v1, p0}, Lk/k0;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method
