.class public final Lla/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lla/g;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ll7/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lla/g;

    invoke-static {v0}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lla/g;-><init>(Ljava/util/Set;Ll7/a;)V

    sput-object v1, Lla/g;->c:Lla/g;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ll7/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/g;->a:Ljava/util/Set;

    iput-object p2, p0, Lla/g;->b:Ll7/a;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lla/g;

    if-eqz v0, :cond_0

    check-cast p1, Lla/g;

    iget-object v0, p1, Lla/g;->a:Ljava/util/Set;

    iget-object v1, p0, Lla/g;->a:Ljava/util/Set;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lla/g;->b:Ll7/a;

    iget-object p0, p0, Lla/g;->b:Ll7/a;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lla/g;->a:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x5ed

    mul-int/lit8 v0, v0, 0x29

    iget-object p0, p0, Lla/g;->b:Ll7/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
