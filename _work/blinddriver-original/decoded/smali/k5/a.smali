.class public final Lk5/a;
.super Lcom/fasterxml/jackson/databind/module/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 8

    new-instance v0, Lpb/m;

    invoke-direct {v0}, Lpb/m;-><init>()V

    new-instance v1, Ls5/w;

    const-string v4, "com.bedatadriven"

    const-string v5, "jackson-datatype-jts"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ls5/w;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    const-string v2, "JtsModule"

    invoke-direct {p0, v2, v1}, Lcom/fasterxml/jackson/databind/module/d;-><init>(Ljava/lang/String;Ls5/w;)V

    new-instance v1, Lm5/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-class v2, Lpb/i;

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/jackson/databind/module/d;->addSerializer(Ljava/lang/Class;Lb6/u;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v1, Ll5/a;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Ll5/a;-><init>(Lpb/m;I)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Ll5/a;->c:Ljava/lang/Object;

    new-instance v4, Ll5/c;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ll5/c;-><init>(Lpb/m;I)V

    const-string v5, "Point"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ll5/c;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Ll5/c;-><init>(Lpb/m;I)V

    const-string v5, "MultiPoint"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ll5/c;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Ll5/c;-><init>(Lpb/m;I)V

    const-string v5, "LineString"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ll5/c;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ll5/c;-><init>(Lpb/m;I)V

    const-string v5, "MultiLineString"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ll5/c;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v5}, Ll5/c;-><init>(Lpb/m;I)V

    const-string v5, "Polygon"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ll5/a;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Ll5/a;-><init>(Lpb/m;I)V

    const-string v5, "MultiPolygon"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ll5/a;

    invoke-direct {v4, v0, v1}, Ll5/a;-><init>(Lpb/m;Ll5/a;)V

    const-string v5, "GeometryCollection"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lf6/e;

    invoke-direct {v3, v1}, Lf6/e;-><init>(Ll5/b;)V

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v2, Lf6/e;

    new-instance v3, Ll5/c;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Ll5/c;-><init>(Lpb/m;I)V

    invoke-direct {v2, v3}, Lf6/e;-><init>(Ll5/b;)V

    const-class v3, Lpb/w;

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v2, Lf6/e;

    new-instance v3, Ll5/c;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ll5/c;-><init>(Lpb/m;I)V

    invoke-direct {v2, v3}, Lf6/e;-><init>(Ll5/b;)V

    const-class v3, Lpb/u;

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v2, Lf6/e;

    new-instance v3, Ll5/c;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ll5/c;-><init>(Lpb/m;I)V

    invoke-direct {v2, v3}, Lf6/e;-><init>(Ll5/b;)V

    const-class v3, Lpb/q;

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v2, Lf6/e;

    new-instance v3, Ll5/c;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ll5/c;-><init>(Lpb/m;I)V

    invoke-direct {v2, v3}, Lf6/e;-><init>(Ll5/b;)V

    const-class v3, Lpb/t;

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v2, Lf6/e;

    new-instance v3, Ll5/c;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Ll5/c;-><init>(Lpb/m;I)V

    invoke-direct {v2, v3}, Lf6/e;-><init>(Ll5/b;)V

    const-class v3, Lpb/x;

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v2, Lf6/e;

    new-instance v3, Ll5/a;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ll5/a;-><init>(Lpb/m;I)V

    invoke-direct {v2, v3}, Lf6/e;-><init>(Ll5/b;)V

    const-class v3, Lpb/v;

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v2, Lf6/e;

    new-instance v3, Ll5/a;

    invoke-direct {v3, v0, v1}, Ll5/a;-><init>(Lpb/m;Ll5/a;)V

    invoke-direct {v2, v3}, Lf6/e;-><init>(Ll5/b;)V

    const-class v0, Lpb/j;

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    return-void
.end method
