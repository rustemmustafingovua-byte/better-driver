.class public final Lr5/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final q:Lr5/w;


# instance fields
.field public final l:Ljava/util/Set;

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lr5/w;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lr5/w;-><init>(Ljava/util/Set;ZZZZ)V

    sput-object v0, Lr5/w;->q:Lr5/w;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object p1, p0, Lr5/w;->l:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lr5/w;->l:Ljava/util/Set;

    :goto_0
    iput-boolean p2, p0, Lr5/w;->m:Z

    iput-boolean p3, p0, Lr5/w;->n:Z

    iput-boolean p4, p0, Lr5/w;->o:Z

    iput-boolean p5, p0, Lr5/w;->p:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lr5/w;

    if-ne v2, v3, :cond_3

    check-cast p1, Lr5/w;

    iget-boolean v2, p0, Lr5/w;->m:Z

    iget-boolean v3, p1, Lr5/w;->m:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lr5/w;->p:Z

    iget-boolean v3, p1, Lr5/w;->p:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lr5/w;->n:Z

    iget-boolean v3, p1, Lr5/w;->n:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lr5/w;->o:Z

    iget-boolean v3, p1, Lr5/w;->o:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lr5/w;->l:Ljava/util/Set;

    iget-object p1, p1, Lr5/w;->l:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lr5/w;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-boolean v1, p0, Lr5/w;->m:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lr5/w;->n:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const/4 v1, -0x7

    :goto_1
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lr5/w;->o:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_2

    :cond_2
    const/16 v1, -0xb

    :goto_2
    add-int/2addr v0, v1

    iget-boolean p0, p0, Lr5/w;->p:Z

    if-eqz p0, :cond_3

    const/16 p0, 0xb

    goto :goto_3

    :cond_3
    const/16 p0, -0xd

    :goto_3
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lr5/w;->m:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lr5/w;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lr5/w;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lr5/w;->p:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object p0, p0, Lr5/w;->l:Ljava/util/Set;

    filled-new-array {p0, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "JsonIgnoreProperties.Value(ignored=%s,ignoreUnknown=%s,allowGetters=%s,allowSetters=%s,merge=%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
