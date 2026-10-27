.class public final Lw3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lk/v0;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lq3/k;

.field public d:Lg5/m;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lw3/b;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/v0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk/v0;-><init>(I)V

    iput-object v0, p0, Lw3/b;->a:Lk/v0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw3/b;->b:Ljava/util/ArrayList;

    new-instance v0, Lq3/k;

    const/16 v2, 0xb

    invoke-direct {v0, v2, p0}, Lq3/k;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lw3/b;->c:Lq3/k;

    iput-boolean v1, p0, Lw3/b;->e:Z

    return-void
.end method
