.class public final Lc2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/s0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Li9/c;


# direct methods
.method public constructor <init>(IILjava/util/Map;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc2/s;->a:I

    iput p2, p0, Lc2/s;->b:I

    iput-object p3, p0, Lc2/s;->c:Ljava/util/Map;

    iput-object p4, p0, Lc2/s;->d:Li9/c;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lc2/s;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lc2/s;->b:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lc2/s;->a:I

    return p0
.end method

.method public final f()Li9/c;
    .locals 0

    iget-object p0, p0, Lc2/s;->d:Li9/c;

    return-object p0
.end method
