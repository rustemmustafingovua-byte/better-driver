.class public final Lr5/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final m:Lr5/c0;


# instance fields
.field public final l:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr5/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr5/c0;-><init>(Ljava/util/Set;)V

    sput-object v0, Lr5/c0;->m:Lr5/c0;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/c0;->l:Ljava/util/Set;

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

    const-class v3, Lr5/c0;

    if-ne v2, v3, :cond_4

    check-cast p1, Lr5/c0;

    iget-object p1, p1, Lr5/c0;->l:Ljava/util/Set;

    iget-object p0, p0, Lr5/c0;->l:Ljava/util/Set;

    if-nez p0, :cond_3

    if-nez p1, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v1

    goto :goto_0

    :cond_3
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lr5/c0;->l:Ljava/util/Set;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lr5/c0;->l:Ljava/util/Set;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "JsonIncludeProperties.Value(included=%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
