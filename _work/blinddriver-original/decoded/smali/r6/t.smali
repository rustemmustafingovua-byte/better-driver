.class public final Lr6/t;
.super Ls6/d;
.source "SourceFile"


# instance fields
.field public final v:Lu6/r;


# direct methods
.method public constructor <init>(Lr6/t;Lf8/p2;)V
    .locals 1

    .line 9
    iget-object v0, p1, Ls6/d;->q:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Ls6/d;-><init>(Ls6/d;Lf8/p2;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p1, Lr6/t;->v:Lu6/r;

    iput-object p1, p0, Lr6/t;->v:Lu6/r;

    return-void
.end method

.method public constructor <init>(Lr6/t;Lf8/p2;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Ls6/d;-><init>(Ls6/d;Lf8/p2;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p1, Lr6/t;->v:Lu6/r;

    iput-object p1, p0, Lr6/t;->v:Lu6/r;

    return-void
.end method

.method public constructor <init>(Lr6/t;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Ls6/d;-><init>(Ls6/d;Ljava/util/Set;Ljava/util/Set;)V

    .line 6
    iget-object p1, p1, Lr6/t;->v:Lu6/r;

    iput-object p1, p0, Lr6/t;->v:Lu6/r;

    return-void
.end method

.method public constructor <init>(Lr6/t;[Lq6/c;[Lq6/c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Ls6/d;-><init>(Ls6/d;[Lq6/c;[Lq6/c;)V

    .line 8
    iget-object p1, p1, Lr6/t;->v:Lu6/r;

    iput-object p1, p0, Lr6/t;->v:Lu6/r;

    return-void
.end method

.method public constructor <init>(Ls6/d;Lu6/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ls6/d;-><init>(Ls6/d;Lu6/r;)V

    .line 2
    iput-object p2, p0, Lr6/t;->v:Lu6/r;

    return-void
.end method


# virtual methods
.method public final isUnwrappingSerializer()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final m()Ls6/d;
    .locals 0

    return-object p0
.end method

.method public final q(Ljava/util/Set;Ljava/util/Set;)Ls6/d;
    .locals 1

    new-instance v0, Lr6/t;

    invoke-direct {v0, p0, p1, p2}, Lr6/t;-><init>(Lr6/t;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public final r(Ljava/lang/Object;)Ls6/d;
    .locals 2

    new-instance v0, Lr6/t;

    iget-object v1, p0, Ls6/d;->s:Lf8/p2;

    invoke-direct {v0, p0, v1, p1}, Lr6/t;-><init>(Lr6/t;Lf8/p2;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final s(Lf8/p2;)Ls6/d;
    .locals 1

    new-instance v0, Lr6/t;

    invoke-direct {v0, p0, p1}, Lr6/t;-><init>(Lr6/t;Lf8/p2;)V

    return-object v0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ls6/d;->k(Ljava/lang/Object;Ls5/g;Lb6/r0;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Ls6/d;->q:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 2

    sget-object v0, Lb6/q0;->s:Lb6/q0;

    iget-object v1, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Ls6/d;->j(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void

    :cond_0
    iget-object p4, p0, Ls6/d;->q:Ljava/lang/Object;

    if-nez p4, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    throw v1

    :cond_2
    iget-object p0, p0, Ls6/n0;->l:Ljava/lang/Class;

    const-string p1, "Unwrapped property requires use of type information: cannot serialize without disabling `SerializationFeature.FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS`"

    invoke-virtual {p3, p0, p1}, Lb6/g;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    throw v1
.end method

.method public final t([Lq6/c;[Lq6/c;)Ls6/d;
    .locals 1

    new-instance v0, Lr6/t;

    invoke-direct {v0, p0, p1, p2}, Lr6/t;-><init>(Lr6/t;[Lq6/c;[Lq6/c;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UnwrappingBeanSerializer for "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unwrappingSerializer(Lu6/r;)Lb6/u;
    .locals 1

    new-instance v0, Lr6/t;

    invoke-direct {v0, p0, p1}, Lr6/t;-><init>(Ls6/d;Lu6/r;)V

    return-object v0
.end method

.method public final bridge synthetic withFilterId(Ljava/lang/Object;)Lb6/u;
    .locals 0

    invoke-virtual {p0, p1}, Lr6/t;->r(Ljava/lang/Object;)Ls6/d;

    move-result-object p0

    return-object p0
.end method
