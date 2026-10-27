.class public final synthetic Lua/nav/routing/GeoPoint$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/routing/GeoPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lha/w;"
    }
.end annotation

.annotation runtime Lt8/c;
.end annotation


# static fields
.field public static final INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/GeoPoint$$serializer;

    invoke-direct {v0}, Lua/nav/routing/GeoPoint$$serializer;-><init>()V

    sput-object v0, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.routing.GeoPoint"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "lat"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "lon"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/routing/GeoPoint$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lha/q;->a:Lha/q;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    return-object p0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/routing/GeoPoint$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/GeoPoint;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/GeoPoint;
    .locals 10

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/routing/GeoPoint$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v5, v1

    move-wide v6, v2

    move-wide v8, v6

    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {p1, p0}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_1

    if-ne v3, v0, :cond_0

    invoke-interface {p1, p0, v0}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v8

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    new-instance p0, Lda/d;

    invoke-direct {p0, v3}, Lda/d;-><init>(I)V

    throw p0

    :cond_1
    invoke-interface {p1, p0, v1}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v6

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v4, Lua/nav/routing/GeoPoint;

    invoke-direct/range {v4 .. v9}, Lua/nav/routing/GeoPoint;-><init>(IDD)V

    return-object v4
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lua/nav/routing/GeoPoint$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/routing/GeoPoint;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/GeoPoint$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/GeoPoint;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/GeoPoint;)V
    .locals 3

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/routing/GeoPoint$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    iget-wide v0, p2, Lua/nav/routing/GeoPoint;->a:D

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v0, v1}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x1

    iget-wide v1, p2, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {p1, p0, v0, v1, v2}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    .line 4
    invoke-virtual {p1, p0}, Lja/q;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    sget-object p0, Lha/n0;->b:[Lkotlinx/serialization/KSerializer;

    return-object p0
.end method
