.class public final Lia/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# static fields
.field public static final b:Lia/f;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final synthetic a:Lha/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/f;

    invoke-direct {v0}, Lia/f;-><init>()V

    sput-object v0, Lia/f;->b:Lia/f;

    const-string v0, "kotlinx.serialization.json.JsonArray"

    sput-object v0, Lia/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lia/o;->a:Lia/o;

    invoke-static {v0}, Ly4/s;->a(Lkotlinx/serialization/KSerializer;)Lha/c;

    move-result-object v0

    iget-object v0, v0, Lha/c;->b:Lha/b;

    iput-object v0, p0, Lia/f;->a:Lha/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    sget-object p0, Lia/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lia/f;->a:Lha/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lia/f;->a:Lha/b;

    invoke-virtual {p0, p1}, Lha/f0;->d(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final e()La/a;
    .locals 0

    iget-object p0, p0, Lia/f;->a:Lha/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lfa/g;->g:Lfa/g;

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget-object p0, p0, Lia/f;->a:Lha/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lia/f;->a:Lha/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lia/f;->a:Lha/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lia/f;->a:Lha/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final i(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lia/f;->a:Lha/b;

    invoke-virtual {p0, p1}, Lha/f0;->i(I)Ljava/util/List;

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public final j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lia/f;->a:Lha/b;

    invoke-virtual {p0, p1}, Lha/f0;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final k(I)Z
    .locals 0

    iget-object p0, p0, Lia/f;->a:Lha/b;

    invoke-virtual {p0, p1}, Lha/f0;->k(I)Z

    const/4 p0, 0x0

    return p0
.end method
