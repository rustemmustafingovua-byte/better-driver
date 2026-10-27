.class public final Lia/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# static fields
.field public static final b:Lia/a0;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final synthetic a:Lha/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/a0;

    invoke-direct {v0}, Lia/a0;-><init>()V

    sput-object v0, Lia/a0;->b:Lia/a0;

    const-string v0, "kotlinx.serialization.json.JsonObject"

    sput-object v0, Lia/a0;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lha/a1;->a:Lha/a1;

    sget-object v0, Lia/o;->a:Lia/o;

    sget-object v1, Lha/a1;->a:Lha/a1;

    new-instance v1, Lha/d0;

    sget-object v2, Lha/a1;->b:Lha/u0;

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lha/d0;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v1, p0, Lia/a0;->a:Lha/d0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    sget-object p0, Lia/a0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lia/a0;->a:Lha/d0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lia/a0;->a:Lha/d0;

    invoke-virtual {p0, p1}, Lha/d0;->d(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final e()La/a;
    .locals 0

    iget-object p0, p0, Lia/a0;->a:Lha/d0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lfa/g;->h:Lfa/g;

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget-object p0, p0, Lia/a0;->a:Lha/d0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x2

    return p0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lia/a0;->a:Lha/d0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lia/a0;->a:Lha/d0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lia/a0;->a:Lha/d0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final i(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lia/a0;->a:Lha/d0;

    invoke-virtual {p0, p1}, Lha/d0;->i(I)Ljava/util/List;

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public final j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lia/a0;->a:Lha/d0;

    invoke-virtual {p0, p1}, Lha/d0;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final k(I)Z
    .locals 0

    iget-object p0, p0, Lia/a0;->a:Lha/d0;

    invoke-virtual {p0, p1}, Lha/d0;->k(I)Z

    const/4 p0, 0x0

    return p0
.end method
