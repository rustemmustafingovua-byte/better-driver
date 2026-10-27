.class public final synthetic Lua/nav/geo/PackInfo$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/geo/PackInfo;
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

.field public static final INSTANCE:Lua/nav/geo/PackInfo$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/geo/PackInfo$$serializer;

    invoke-direct {v0}, Lua/nav/geo/PackInfo$$serializer;-><init>()V

    sput-object v0, Lua/nav/geo/PackInfo$$serializer;->INSTANCE:Lua/nav/geo/PackInfo$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.geo.PackInfo"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "title"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "version"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "url"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "sha256"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "sizeBytes"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "dbBytes"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "bounds"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/geo/PackInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    sget-object p0, Lua/nav/geo/PackInfo;->i:[Lt8/g;

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lha/a1;->a:Lha/a1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lha/i0;->a:Lha/i0;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    aget-object p0, p0, v1

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/geo/PackInfo$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/geo/PackInfo;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/geo/PackInfo;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lua/nav/geo/PackInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object v0

    .line 3
    sget-object v2, Lua/nav/geo/PackInfo;->i:[Lt8/g;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v9, v4

    move-object v10, v5

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-wide v15, v6

    move-wide/from16 v17, v15

    move v6, v3

    :goto_0
    if-eqz v6, :cond_0

    .line 4
    invoke-interface {v0, v1}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v0, Lda/d;

    invoke-direct {v0, v7}, Lda/d;-><init>(I)V

    throw v0

    :pswitch_0
    const/4 v7, 0x7

    aget-object v8, v2, v7

    invoke-interface {v8}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v7, v8, v5}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    or-int/lit16 v9, v9, 0x80

    goto :goto_0

    :pswitch_1
    const/4 v7, 0x6

    invoke-interface {v0, v1, v7}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v17

    or-int/lit8 v9, v9, 0x40

    goto :goto_0

    :pswitch_2
    const/4 v7, 0x5

    invoke-interface {v0, v1, v7}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v15

    or-int/lit8 v9, v9, 0x20

    goto :goto_0

    :pswitch_3
    const/4 v7, 0x4

    invoke-interface {v0, v1, v7}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v14

    or-int/lit8 v9, v9, 0x10

    goto :goto_0

    :pswitch_4
    const/4 v7, 0x3

    invoke-interface {v0, v1, v7}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v13

    or-int/lit8 v9, v9, 0x8

    goto :goto_0

    :pswitch_5
    const/4 v7, 0x2

    invoke-interface {v0, v1, v7}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v12

    or-int/lit8 v9, v9, 0x4

    goto :goto_0

    :pswitch_6
    invoke-interface {v0, v1, v3}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v11

    or-int/lit8 v9, v9, 0x2

    goto :goto_0

    :pswitch_7
    invoke-interface {v0, v1, v4}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v10

    or-int/lit8 v9, v9, 0x1

    goto :goto_0

    :pswitch_8
    move v6, v4

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v8, Lua/nav/geo/PackInfo;

    move-object/from16 v19, v5

    invoke-direct/range {v8 .. v19}, Lua/nav/geo/PackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;)V

    return-object v8

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
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

    sget-object p0, Lua/nav/geo/PackInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/geo/PackInfo;

    invoke-virtual {p0, p1, p2}, Lua/nav/geo/PackInfo$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/geo/PackInfo;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/geo/PackInfo;)V
    .locals 7

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/geo/PackInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    sget-object v0, Lua/nav/geo/PackInfo;->i:[Lt8/g;

    iget-object v1, p2, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iget-object v2, p2, Lua/nav/geo/PackInfo;->h:Ljava/util/List;

    iget-wide v3, p2, Lua/nav/geo/PackInfo;->g:J

    const/4 v5, 0x0

    invoke-virtual {p1, p0, v5, v1}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v5, p2, Lua/nav/geo/PackInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v5}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v5, p2, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v5}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v5, p2, Lua/nav/geo/PackInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v5}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v5, p2, Lua/nav/geo/PackInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v5}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-wide v5, p2, Lua/nav/geo/PackInfo;->f:J

    invoke-virtual {p1, p0, v1, v5, v6}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_1

    :goto_0
    const/4 p2, 0x6

    invoke-virtual {p1, p0, p2, v3, v4}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_1
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    sget-object p2, Lu8/r;->l:Lu8/r;

    .line 5
    invoke-static {v2, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_1
    const/4 p2, 0x7

    aget-object v0, v0, p2

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, p2, v0, v2}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 6
    :cond_3
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
