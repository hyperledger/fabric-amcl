/*
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
*/

package FP256BN

import (
	"math/big"
	"math/rand"
	"testing"
	"time"
)

func TestBIGMul(t *testing.T) {
	rand.Seed(time.Now().Unix())
	x := big.NewInt(int64(rand.Intn(10000)))
	y := big.NewInt(int64(rand.Intn(10000)))
	xy := big.NewInt(0).Mul(x, y)

	xb := NewBIGint(int(x.Int64()))
	yb := NewBIGint(int(y.Int64()))
	xyb := NewBIGint(int(xy.Int64()))

	if !xb.Mul(yb).Minus(xyb).iszilch() {
		t.Fatalf("xb * yb != xyb")
	}
}
