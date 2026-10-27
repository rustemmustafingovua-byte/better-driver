.class public final Lv4/k;
.super Lv4/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Lv4/m;


# direct methods
.method public constructor <init>(Lv4/m;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv4/k;->e:Lv4/m;

    iput-object p2, p0, Lv4/k;->a:Ljava/lang/Object;

    iput-object p3, p0, Lv4/k;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lv4/k;->c:Ljava/lang/Object;

    iput-object p5, p0, Lv4/k;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final c(Lv4/t;)V
    .locals 0

    invoke-virtual {p1, p0}, Lv4/t;->P(Lv4/r;)Lv4/t;

    return-void
.end method

.method public final f(Lv4/t;)V
    .locals 3

    const/4 p1, 0x0

    iget-object v0, p0, Lv4/k;->e:Lv4/m;

    iget-object v1, p0, Lv4/k;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lv4/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Lv4/m;->z(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Lv4/k;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lv4/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0, p1}, Lv4/m;->z(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method
