.class public final synthetic Lua/nav/SavedPlan$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/SavedPlan;
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

.field public static final INSTANCE:Lua/nav/SavedPlan$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/SavedPlan$$serializer;

    invoke-direct {v0}, Lua/nav/SavedPlan$$serializer;-><init>()V

    sput-object v0, Lua/nav/SavedPlan$$serializer;->INSTANCE:Lua/nav/SavedPlan$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.SavedPlan"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "a"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "aLabel"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "b"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "bLabel"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "routes"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "selected"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "via"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/SavedPlan$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    sget-object p0, Lua/nav/SavedPlan;->h:[Lt8/g;

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    invoke-static {v1}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lha/a1;->a:Lha/a1;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aget-object v2, p0, v1

    invoke-interface {v2}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lha/c0;->a:Lha/c0;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aget-object p0, p0, v1

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/SavedPlan$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/SavedPlan;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/SavedPlan;
    .locals 14

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/SavedPlan$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object p1

    .line 3
    sget-object v0, Lua/nav/SavedPlan;->h:[Lt8/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v11, v5

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    move v3, v1

    :goto_0
    if-eqz v3, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance p0, Lda/d;

    invoke-direct {p0, v4}, Lda/d;-><init>(I)V

    throw p0

    :pswitch_0
    const/4 v4, 0x6

    aget-object v13, v0, v4

    invoke-interface {v13}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, p0, v4, v13, v12}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/util/List;

    or-int/lit8 v5, v5, 0x40

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x5

    invoke-interface {p1, p0, v4}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v11

    or-int/lit8 v5, v5, 0x20

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x4

    aget-object v13, v0, v4

    invoke-interface {v13}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, p0, v4, v13, v10}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    or-int/lit8 v5, v5, 0x10

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x3

    invoke-interface {p1, p0, v4}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v5, v5, 0x8

    goto :goto_0

    :pswitch_4
    sget-object v4, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    const/4 v13, 0x2

    invoke-interface {p1, p0, v13, v4, v8}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lua/nav/routing/GeoPoint;

    or-int/lit8 v5, v5, 0x4

    goto :goto_0

    :pswitch_5
    invoke-interface {p1, p0, v1}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v7

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :pswitch_6
    sget-object v4, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    invoke-interface {p1, p0, v2, v4, v6}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lua/nav/routing/GeoPoint;

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :pswitch_7
    move v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v4, Lua/nav/SavedPlan;

    invoke-direct/range {v4 .. v12}, Lua/nav/SavedPlan;-><init>(ILua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;ILjava/util/List;)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lua/nav/SavedPlan$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/SavedPlan;

    invoke-virtual {p0, p1, p2}, Lua/nav/SavedPlan$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/SavedPlan;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/SavedPlan;)V
    .locals 5

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/SavedPlan$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    sget-object v0, Lua/nav/SavedPlan;->h:[Lt8/g;

    sget-object v1, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    iget-object v2, p2, Lua/nav/SavedPlan;->a:Lua/nav/routing/GeoPoint;

    iget-object v3, p2, Lua/nav/SavedPlan;->g:Ljava/util/List;

    const/4 v4, 0x0

    invoke-virtual {p1, p0, v4, v1, v2}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    iget-object v2, p2, Lua/nav/SavedPlan;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p1, p0, v4, v2}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v2, 0x2

    iget-object v4, p2, Lua/nav/SavedPlan;->c:Lua/nav/routing/GeoPoint;

    invoke-virtual {p1, p0, v2, v1, v4}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    const/4 v1, 0x3

    iget-object v2, p2, Lua/nav/SavedPlan;->d:Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v2}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x4

    aget-object v2, v0, v1

    invoke-interface {v2}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    iget-object v4, p2, Lua/nav/SavedPlan;->e:Ljava/util/List;

    invoke-virtual {p1, p0, v1, v2, v4}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    const/4 v1, 0x5

    iget p2, p2, Lua/nav/SavedPlan;->f:I

    invoke-virtual {p1, v1, p2, p0}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lu8/r;->l:Lu8/r;

    .line 5
    invoke-static {v3, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    const/4 p2, 0x6

    aget-object v0, v0, p2

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, p2, v0, v3}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 6
    :cond_1
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
