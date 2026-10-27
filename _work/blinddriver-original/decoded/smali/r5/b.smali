.class public final Lr5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final o:Lr5/b;


# instance fields
.field public final l:Ljava/lang/Object;

.field public final m:Ljava/lang/Boolean;

.field public final n:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr5/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lr5/b;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sput-object v0, Lr5/b;->o:Lr5/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/b;->l:Ljava/lang/Object;

    iput-object p2, p0, Lr5/b;->m:Ljava/lang/Boolean;

    iput-object p3, p0, Lr5/b;->n:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

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

    const-class v3, Lr5/b;

    if-ne v2, v3, :cond_8

    check-cast p1, Lr5/b;

    iget-object v2, p1, Lr5/b;->n:Ljava/lang/Boolean;

    iget-object v3, p1, Lr5/b;->m:Ljava/lang/Boolean;

    iget-object p1, p1, Lr5/b;->l:Ljava/lang/Object;

    iget-object v4, p0, Lr5/b;->l:Ljava/lang/Object;

    if-nez v4, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    if-eqz v4, :cond_8

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_3
    iget-object p1, p0, Lr5/b;->m:Ljava/lang/Boolean;

    if-nez p1, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    if-eqz p1, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_5
    iget-object p0, p0, Lr5/b;->n:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz p0, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    return v0

    :cond_8
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lr5/b;->l:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lr5/b;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object p0, p0, Lr5/b;->n:Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr5/b;->m:Ljava/lang/Boolean;

    iget-object v1, p0, Lr5/b;->n:Ljava/lang/Boolean;

    iget-object p0, p0, Lr5/b;->l:Ljava/lang/Object;

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "JacksonInject.Value(id=%s,useInput=%s,optional=%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
