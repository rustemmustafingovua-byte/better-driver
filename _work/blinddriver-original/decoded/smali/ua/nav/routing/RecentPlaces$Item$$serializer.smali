.class public final synthetic Lua/nav/routing/RecentPlaces$Item$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/routing/RecentPlaces$Item;
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
.field public static final $stable:I

.field public static final INSTANCE:Lua/nav/routing/RecentPlaces$Item$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/RecentPlaces$Item$$serializer;

    invoke-direct {v0}, Lua/nav/routing/RecentPlaces$Item$$serializer;-><init>()V

    sput-object v0, Lua/nav/routing/RecentPlaces$Item$$serializer;->INSTANCE:Lua/nav/routing/RecentPlaces$Item$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.routing.RecentPlaces.Item"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "title"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "lat"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "lon"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "ts"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/routing/RecentPlaces$Item$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    const/4 p0, 0x4

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lha/a1;->a:Lha/a1;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lha/q;->a:Lha/q;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lha/i0;->a:Lha/i0;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    return-object p0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/routing/RecentPlaces$Item$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/RecentPlaces$Item;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/RecentPlaces$Item;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lua/nav/routing/RecentPlaces$Item$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move v10, v3

    move-object v11, v4

    move-wide v12, v5

    move-wide v14, v12

    move-wide/from16 v16, v7

    move v4, v2

    :goto_0
    if-eqz v4, :cond_5

    invoke-interface {v0, v1}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    if-eqz v5, :cond_3

    if-eq v5, v2, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-interface {v0, v1, v6}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v16

    or-int/lit8 v10, v10, 0x8

    goto :goto_0

    :cond_0
    new-instance v0, Lda/d;

    invoke-direct {v0, v5}, Lda/d;-><init>(I)V

    throw v0

    :cond_1
    invoke-interface {v0, v1, v6}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v14

    or-int/lit8 v10, v10, 0x4

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1, v2}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v12

    or-int/lit8 v10, v10, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1, v3}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v11

    or-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_0

    :cond_5
    invoke-interface {v0, v1}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v9, Lua/nav/routing/RecentPlaces$Item;

    invoke-direct/range {v9 .. v17}, Lua/nav/routing/RecentPlaces$Item;-><init>(ILjava/lang/String;DDJ)V

    return-object v9
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lua/nav/routing/RecentPlaces$Item$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/routing/RecentPlaces$Item;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/RecentPlaces$Item$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/RecentPlaces$Item;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/RecentPlaces$Item;)V
    .locals 3

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/routing/RecentPlaces$Item$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    iget-object v0, p2, Lua/nav/routing/RecentPlaces$Item;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-wide v1, p2, Lua/nav/routing/RecentPlaces$Item;->b:D

    invoke-virtual {p1, p0, v0, v1, v2}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x2

    iget-wide v1, p2, Lua/nav/routing/RecentPlaces$Item;->c:D

    invoke-virtual {p1, p0, v0, v1, v2}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x3

    iget-wide v1, p2, Lua/nav/routing/RecentPlaces$Item;->d:J

    invoke-virtual {p1, p0, v0, v1, v2}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

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
